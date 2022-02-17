package vocabulary

import (
	"strings"
)

const AlphabetSize = 512

type Node struct {
	Children [AlphabetSize]*Node
	IsEnd    bool
	Char     uint8
	Voc      Vocabulary
}

type Trie struct {
	Root *Node
}

func InitTrie() *Trie {
	ret := &Trie{
		Root: &Node{},
	}
	return ret
}

func strippedWord(word string) string {
	return strings.ToLower(word)
}

func (t *Trie) Insert(voc Vocabulary) {
	word := strippedWord(voc.Word)
	currentNode := t.Root
	for i := 0; i < len(word); i++ {
		charIndex := word[i] - 'a'
		if currentNode.Children[charIndex] == nil {
			currentNode.Children[charIndex] = &Node{
				Char: word[i],
			}
		}
		currentNode = currentNode.Children[charIndex]
	}
	currentNode.IsEnd = true
	currentNode.Voc = voc
}

func (t *Trie) Search(word string) bool {
	word = strippedWord(word)
	currentNode := t.Root
	for i := 0; i < len(word); i++ {
		charIndex := word[i] - 'a'
		if currentNode.Children[charIndex] == nil {
			return false
		}
		currentNode = currentNode.Children[charIndex]
	}
	return currentNode.IsEnd
}

func (t *Trie) Suggest(prefix string) []*Vocabulary {
	currentNode := t.Root
	res := make([]*Vocabulary, 0)

	for i := 0; i < len(prefix); i++ {
		currentNode = currentNode.Children[prefix[i]-'a']
		if currentNode == nil {
			return res
		}
	}

	suggestHelper(currentNode, &res, prefix[0:len(prefix)-1])
	return res
}

func suggestHelper(node *Node, res *[]*Vocabulary, prefix string) {
	if node.IsEnd {
		*res = append(*res, &node.Voc)
	}

	for i := 0; i < len(node.Children); i++ {
		if node.Children[i] == nil {
			continue
		}
		suggestHelper(node.Children[i], res, prefix+string(node.Char))
	}
}
