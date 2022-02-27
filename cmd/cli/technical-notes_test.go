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

func TestTechnicalNoteCommandRunner_Run(t *testing.T) {
	const searchTerm = "scalability"
	t.Run("when searcher has problem, it should return error", func(t *testing.T) {
		search := NewMockSearcher(gomock.NewController(t))
		search.
			EXPECT().
			Search(gomock.Any(), searchTerm).
			Return(technicalnotes.SearchResponse{}, errors.New("error occurred")).
			Times(1)
		tncr := TechnicalNoteCommandRunner{Searcher: search, Keyword: searchTerm}
		_, err := tncr.Run(context.Background())
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
		res, err := tncr.Run(context.Background())
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
		assert.True(t, strings.Contains(output, res), fmt.Sprintf(`Output="%s" not include res="%s"`, output, res))
	}
}
