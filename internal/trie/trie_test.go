package trie_test

import (
	"testing"

	"github.com/Abdulsametileri/lifelong-learner/internal/trie"
	"github.com/Abdulsametileri/lifelong-learner/internal/vocabulary"
	"github.com/k0kubun/pp"
	"github.com/stretchr/testify/assert"
)

func Test_Trie(t *testing.T) {
	myTrie := trie.InitTrie()
	myTrie.Insert(vocabulary.Vocabulary{Word: "make"})
	myTrie.Insert(vocabulary.Vocabulary{Word: "adage"})
	myTrie.Insert(vocabulary.Vocabulary{Word: "antidote"})
	myTrie.Insert(vocabulary.Vocabulary{Word: "be cautious"})
	myTrie.Insert(vocabulary.Vocabulary{Word: "be conducted"})
	myTrie.Insert(vocabulary.Vocabulary{Word: "be hot on somebody's trail"})
	myTrie.Insert(vocabulary.Vocabulary{Word: "based on my own life and experience"})

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
		assert.Len(t, result, 3)
		pp.Println(result)
	})
}
