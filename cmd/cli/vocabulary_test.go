package main

import (
	"bytes"
	"context"
	"fmt"
	"strings"
	"testing"

	"github.com/Abdulsametileri/lifelong-learner/internal/env"

	"github.com/Abdulsametileri/lifelong-learner/internal/vocabulary"
	"github.com/golang/mock/gomock"
	"github.com/pkg/errors"
	"github.com/stretchr/testify/assert"
)

func TestVocabularyCommandRunner_Run(t *testing.T) {
	const vocFilePath = "../../internal/vocabulary/vocabulary.json"

	assertFunc := func(t *testing.T, out string) {
		assert.True(t, strings.Contains(out, "magic wand"))
		assert.True(t, strings.Contains(out, "sihirli değnek"))
		assert.True(t, strings.Contains(out, "make a fuss about"))
		assert.True(t, strings.Contains(out, "make such a declaration"))
	}

	t.Run("when google sheet is not enabled", func(t *testing.T) {
		vcr := VocabularyCommandRunner{
			Prefix:                     "ma",
			IsGoogleSheetClientEnabled: false,
			VocabularyFilePath:         vocFilePath,
		}

		var buf bytes.Buffer
		err := vcr.Run(context.Background(), &buf)
		assert.Nil(t, err)

		assertFunc(t, buf.String())
	})
	t.Run("when google sheet is enabled", func(t *testing.T) {
		env.Parse("../../.env")
		vcr := VocabularyCommandRunner{
			Prefix:                     "ma",
			IsGoogleSheetClientEnabled: true,
			VocabularyFilePath:         vocFilePath,
		}

		var buf bytes.Buffer
		err := vcr.Run(context.Background(), &buf)
		assert.Nil(t, err)

		assertFunc(t, buf.String())
	})
}

func TestVocabularyCommandRunner_Validate(t *testing.T) {
	t.Run("when related parameters not valid, it should return error", func(t *testing.T) {
		vcr := VocabularyCommandRunner{Prefix: ""}
		err := vcr.Validate()
		assert.Error(t, err)
	})
	t.Run("when related parameters is valid, it should return nil", func(t *testing.T) {
		vcr := VocabularyCommandRunner{Prefix: "manifest"}
		err := vcr.Validate()
		assert.Nil(t, err)
	})
}

func TestVocabularyCommandRunner_GetSuggests(t *testing.T) {
	t.Run("when client is failed, it should return error", func(t *testing.T) {
		mockClient := NewMockClient(gomock.NewController(t))

		ret := make([]vocabulary.Vocabulary, 0)
		mockClient.
			EXPECT().
			SuggestWordsByPrefix(gomock.Any(), "ma").
			Return(ret, errors.New("error occurred")).
			Times(1)

		vcr := VocabularyCommandRunner{
			Prefix: "ma",
			Client: mockClient,
		}

		_, err := vcr.GetSuggests(context.Background())
		assert.Error(t, err)
	})
	t.Run("when client work properly, it should return results", func(t *testing.T) {
		mockClient := NewMockClient(gomock.NewController(t))

		ret := make([]vocabulary.Vocabulary, 0)
		ret = append(ret, vocabulary.Vocabulary{
			Word:     "w1",
			Meaning:  "m1",
			Sentence: "s1",
		})

		mockClient.
			EXPECT().
			SuggestWordsByPrefix(gomock.Any(), "ma").
			Return(ret, nil).
			Times(1)

		vcr := VocabularyCommandRunner{
			Prefix: "ma",
			Client: mockClient,
		}

		res, err := vcr.GetSuggests(context.Background())
		assert.Nil(t, err)
		assert.Len(t, res, len(ret))
	})
}

func TestVocabularyCommandRunner_DisplayResults(t *testing.T) {
	vcr := VocabularyCommandRunner{}

	var buf bytes.Buffer
	vocabularies := []vocabulary.Vocabulary{
		{
			Word:     "manifest",
			Meaning:  "açıkca göstermek",
			Sentence: "Memory leaks often manifest...",
		},
	}
	vcr.DisplayResults(&buf, vocabularies)

	output := buf.String()

	for _, voc := range vocabularies {
		assert.True(t, strings.Contains(output, voc.Word), fmt.Sprintf(`Output=%q not include word=%q`, output, voc.Word))
		assert.True(t, strings.Contains(output, voc.Meaning), fmt.Sprintf(`Output=%q not include meaning=%q`, output, voc.Meaning))
		assert.True(t, strings.Contains(output, voc.Sentence), fmt.Sprintf(`Output=%q not include sentence=%q`, output, voc.Sentence))
	}
}
