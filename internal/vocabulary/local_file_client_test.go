package vocabulary_test

import (
	"context"
	"github.com/Abdulsametileri/lifelong-learner/internal/vocabulary"
	"github.com/stretchr/testify/assert"
	"strings"
	"testing"
)

func TestLocalFileClient_SuggestWordsByPrefix(t *testing.T) {
	lfc, err := vocabulary.NewLocalFileClient("./vocabulary.json")
	assert.Nil(t, err)

	suggestions, err := lfc.SuggestWordsByPrefix(context.Background(), "be")
	assert.Nil(t, err)

	for _, word := range suggestions {
		if !strings.HasPrefix(word.Word, "be") {
			t.Fatal("error")
		}
	}
}
