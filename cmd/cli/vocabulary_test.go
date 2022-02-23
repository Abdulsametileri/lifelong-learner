package main

import (
	"bytes"
	"fmt"
	"github.com/Abdulsametileri/lifelong-learner/internal/vocabulary"
	"github.com/stretchr/testify/assert"
	"strings"
	"testing"
)

func TestVocabularyCommandRunner_DisplayResults(t *testing.T) {
	vcr := VocabularyCommandRunner{}

	var buf bytes.Buffer
	vocabularies := []*vocabulary.Vocabulary{
		{
			Word:     "manifest",
			Meaning:  "açıkca göstermek",
			Sentence: "Memory leaks often manifest...",
		},
	}
	vcr.DisplayResults(&buf, vocabularies)

	output := buf.String()

	for _, voc := range vocabularies {
		assert.True(t, strings.Contains(output, voc.Word), fmt.Sprintf(`Output="%s" not include word="%s"`, output, voc.Word))
		assert.True(t, strings.Contains(output, voc.Meaning), fmt.Sprintf(`Output="%s" not include meaning="%s"`, output, voc.Meaning))
		assert.True(t, strings.Contains(output, voc.Sentence), fmt.Sprintf(`Output="%s" not include sentence="%s"`, output, voc.Sentence))
	}
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
