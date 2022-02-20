package technicalnotes

import (
	"encoding/json"
	"fmt"
	"github.com/blevesearch/bleve/v2"
	_ "github.com/blevesearch/bleve/v2/config"
	"github.com/pkg/errors"
	"os"
	"strings"
)

const (
	indexPath              = "./internal/technicalnotes/notes.breve"
	dataPath               = "./internal/technicalnotes/transform.json"
	highlighterName        = "custom"
	field                  = "paragraph"
	fragmentHighlighterLen = 1000.0
)

type breveClient struct {
	index bleve.Index
}

func InitBreveClient(refleshIndexData bool) (Searcher, error) {
	err := changeDefaultBreveHighlighter()
	if err != nil {
		return nil, errors.WithStack(err)
	}

	index, err := createIndex()
	if err != nil {
		return nil, errors.WithStack(err)
	}

	bc := breveClient{
		index: index,
	}

	if refleshIndexData {
		fmt.Println("Breve index is refreshing")
		err = bc.indexData()
		if err != nil {
			return nil, err
		}
	}

	return &bc, nil
}

func (b *breveClient) Search(keyword string) (SearchResponse, error) {
	query := bleve.NewFuzzyQuery(keyword)
	searchRequest := bleve.NewSearchRequest(query)
	searchRequest.Fields = []string{field}
	searchRequest.Highlight = bleve.NewHighlightWithStyle(highlighterName)

	searchRes := SearchResponse{}

	res, err := b.index.Search(searchRequest)
	if err != nil {
		return searchRes, err
	}

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

	return searchRes, nil
}

func changeDefaultBreveHighlighter() error {
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

func createIndex() (bleve.Index, error) {
	mapping := bleve.NewIndexMapping()

	bleveIndex, err := bleve.New(indexPath, mapping)
	if err == bleve.ErrorIndexPathExists {
		bleveIndex, err = bleve.Open(indexPath)
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
	file, err := os.ReadFile(dataPath)
	if err != nil {
		return errors.Wrap(err, "error when reading transform file")
	}

	var notes []Note
	err = json.Unmarshal(file, &notes)
	if err != nil {
		return errors.Wrap(err, "error when unmarshalling notes")
	}
	for i, note := range notes {
		b.index.Index(string(i), note)
		fmt.Println(fmt.Sprintf("%d. doc has been indexed", i+1))
	}

	return nil
}
