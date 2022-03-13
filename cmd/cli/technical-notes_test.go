package main

import (
	"bytes"
	"context"
	"fmt"
	"strings"
	"testing"

	"github.com/Abdulsametileri/lifelong-learner/internal/technicalnotes"
	"github.com/golang/mock/gomock"
	"github.com/pkg/errors"
	"github.com/stretchr/testify/assert"
)

func TestTechnicalNoteCommandRunner_Run(t *testing.T) {
	assertFunc := func(t *testing.T, out string) {
		assert.True(t, strings.Contains(out, "shards are often used to"))
		assert.True(t, strings.Contains(out, "algorithms rely on a quorum"))
		assert.True(t, strings.Contains(out, "one of the most important abstractions for"))
	}

	const keyword = "distributed"

	t.Run("when google doc is not enabled", func(t *testing.T) {
		tncr := TechnicalNoteCommandRunner{
			IsGoogleDocClientEnabled: false,
			Keyword:                  keyword,
			BreveIndexFilePath:       "../../internal/technicalnotes/notes.breve",
			BreveDataFilePath:        "../../internal/technicalnotes/transform.json",
		}
		var buf bytes.Buffer
		err := tncr.Run(context.Background(), &buf)
		assert.Nil(t, err)
		assertFunc(t, buf.String())
	})
}

func TestTechnicalNoteCommandRunner_Validate(t *testing.T) {
	t.Run("when related parameters not valid, it should return error", func(t *testing.T) {
		tncr := TechnicalNoteCommandRunner{Keyword: ""}
		err := tncr.Validate()
		assert.Error(t, err)
	})
	t.Run("when related parameters is valid, it should return nil", func(t *testing.T) {
		tncr := TechnicalNoteCommandRunner{Keyword: "valid"}
		err := tncr.Validate()
		assert.Nil(t, err)
	})
}

func TestTechnicalNoteCommandRunner_Search(t *testing.T) {
	const searchTerm = "scalability"
	t.Run("when searcher has problem, it should return error", func(t *testing.T) {
		search := NewMockSearcher(gomock.NewController(t))
		search.
			EXPECT().
			Search(gomock.Any(), searchTerm).
			Return(technicalnotes.SearchResponse{}, errors.New("error occurred")).
			Times(1)
		tncr := TechnicalNoteCommandRunner{Searcher: search, Keyword: searchTerm}
		_, err := tncr.Search(context.Background())
		assert.Error(t, err)
	})
	t.Run("when searcher works properly, it should return correct response", func(t *testing.T) {
		search := NewMockSearcher(gomock.NewController(t))
		search.
			EXPECT().
			Search(gomock.Any(), searchTerm).
			Return(technicalnotes.SearchResponse{TotalResult: 10}, nil).
			Times(1)
		tncr := TechnicalNoteCommandRunner{Searcher: search, Keyword: searchTerm}
		res, err := tncr.Search(context.Background())
		assert.Nil(t, err)
		assert.Equal(t, uint64(10), res.TotalResult)
	})
}

func TestTechnicalNoteCommandRunner_DisplayResults(t *testing.T) {
	tncr := TechnicalNoteCommandRunner{}

	var buf bytes.Buffer

	results := []string{
		"Keyword Result 0",
		"Keyword Result 1",
		"Keyword Result 2",
	}
	searchRes := &technicalnotes.SearchResponse{
		TotalTime:   10,
		TotalResult: 1,
		Results:     results,
	}

	tncr.DisplayResults(&buf, searchRes)

	output := buf.String()

	for _, res := range results {
		assert.True(t, strings.Contains(output, res), fmt.Sprintf(`Output=%q not include res=%q`, output, res))
	}
}
