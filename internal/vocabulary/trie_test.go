package vocabulary_test

import (
	"testing"

	"github.com/Abdulsametileri/lifelong-learner/internal/vocabulary"

	"github.com/stretchr/testify/assert"
)

func Test_Trie(t *testing.T) {
	myTrie := vocabulary.InitTrie()
	myTrie.Insert(vocabulary.Vocabulary{Word: "make", Sentence: "make ile sentence"})
	myTrie.Insert(vocabulary.Vocabulary{Word: "adage", Sentence: "adage ile sentence"})
	myTrie.Insert(vocabulary.Vocabulary{Word: "antidote", Sentence: "antidote ile sentence"})
	myTrie.Insert(vocabulary.Vocabulary{Word: "be cautious", Sentence: "be cautious ile sentence"})
	myTrie.Insert(vocabulary.Vocabulary{Word: "be conducted", Sentence: "be conducted ile sentence"})
	myTrie.Insert(vocabulary.Vocabulary{Word: "be hot on somebody's trail", Sentence: "be hot on somebody's trail ile sentence"})
	myTrie.Insert(vocabulary.Vocabulary{Word: "based on my own life and experience", Sentence: "based on my own life and experience ile sentence"})

	t.Run("test search", func(t *testing.T) {
		assert.True(t, myTrie.Search("make"))
		assert.True(t, myTrie.Search("antidote"))
		assert.True(t, myTrie.Search("adage"))
		assert.True(t, myTrie.Search("be cautious"))
		assert.False(t, myTrie.Search("notExist"))
		assert.True(t, myTrie.Search("based on my own life and experience"))
	})
	t.Run("test suggest", func(t *testing.T) {
		result := myTrie.Suggest("be")
		expected := []string{"be cautious", "be conducted", "be hot on somebody's trail"}

		assert.Len(t, result, 3)

		resmap := make(map[string]bool)
		for _, e := range result {
			resmap[e.Word] = true
		}

		for _, exp := range expected {
			assert.True(t, resmap[exp])
		}
	})
}
