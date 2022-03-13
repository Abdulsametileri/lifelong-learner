package technicalnotes

import (
	"context"
	"encoding/json"
	"fmt"
	"os"
	"strings"

	"github.com/blevesearch/bleve/v2"

	_ "github.com/blevesearch/bleve/v2/config" //nolint:revive
	"github.com/pkg/errors"
)

const (
	highlighterName        = "custom"
	field                  = "paragraph"
	fragmentHighlighterLen = 1000.0
)

type breveClient struct {
	index                 bleve.Index
	StdoutHighlightActive bool
	IndexFilePath         string
	DataFilePath          string
}

func InitBreveClient(indexFilePath, dataFilePath string, stdoutHighlightActive bool) (Searcher, error) {
	bc := breveClient{
		StdoutHighlightActive: stdoutHighlightActive,
		IndexFilePath:         indexFilePath,
		DataFilePath:          dataFilePath,
	}

	err := bc.customBraveFragmentFormatter()
	if err != nil {
		return nil, errors.WithStack(err)
	}

	index, err := bc.createIndex()
	if err != nil {
		return nil, errors.WithStack(err)
	}
	bc.index = index

	return &bc, nil
}

func (b *breveClient) RefleshIndex() error {
	fmt.Println("Breve index is refreshing")
	err := b.indexData()
	return err
}

func (b *breveClient) Search(ctx context.Context, keyword string) (SearchResponse, error) {
	query := bleve.NewFuzzyQuery(keyword)
	searchRequest := bleve.NewSearchRequest(query)
	searchRequest.Fields = []string{field}
	searchRequest.Highlight = bleve.NewHighlightWithStyle(highlighterName)

	searchRes := SearchResponse{}

	res, err := b.index.Search(searchRequest)
	if err != nil {
		return searchRes, err
	}

	if b.StdoutHighlightActive {
		return returnResultUsingFragments(res), nil
	}

	return returnResultUsingRawField(res), nil
}

func (b *breveClient) customBraveFragmentFormatter() error {
	_, err := bleve.Config.Cache.DefineFragmenter("short", map[string]interface{}{
		"type": "simple",
		"size": fragmentHighlighterLen,
	})
	if err != nil {
		return err
	}

	_, err = bleve.Config.Cache.DefineHighlighter(highlighterName, map[string]interface{}{
		"type":       "simple",
		"fragmenter": "short",
		"formatter":  "ansi",
	})
	return err
}

func (b *breveClient) createIndex() (bleve.Index, error) {
	mapping := bleve.NewIndexMapping()

	bleveIndex, err := bleve.New(b.IndexFilePath, mapping)
	if err == bleve.ErrorIndexPathExists {
		bleveIndex, err = bleve.Open(b.IndexFilePath)
		if err != nil {
			return nil, err
		}
		return bleveIndex, nil
	}

	if err != nil {
		return nil, err
	}

	return bleveIndex, nil
}

func (b *breveClient) indexData() error {
	file, err := os.ReadFile(b.DataFilePath)
	if err != nil {
		return errors.Wrap(err, "error when reading transform file")
	}

	var notes []Note
	err = json.Unmarshal(file, &notes)
	if err != nil {
		return errors.Wrap(err, "error when unmarshalling notes")
	}
	for i, note := range notes {
		_ = b.index.Index(fmt.Sprint(i), note)
		fmt.Printf("%d. doc has been indexed\n", i+1)
	}

	return nil
}

func returnResultUsingRawField(res *bleve.SearchResult) (searchRes SearchResponse) {
	searchRes.TotalTime = res.Took
	searchRes.TotalResult = res.Total
	searchRes.Results = []string{}

	for _, hit := range res.Hits {
		searchRes.Results = append(searchRes.Results, hit.Fields[field].(string))
	}

	return
}

func returnResultUsingFragments(res *bleve.SearchResult) (searchRes SearchResponse) {
	searchRes.TotalTime = res.Took
	searchRes.TotalResult = res.Total
	searchRes.Results = []string{}

	for _, hit := range res.Hits {
		var sb strings.Builder
		for _, fragments := range hit.Fragments {
			for _, fragment := range fragments {
				sb.WriteString(fragment)
			}
		}
		searchRes.Results = append(searchRes.Results, sb.String())
	}

	return
}
