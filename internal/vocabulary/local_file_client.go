package vocabulary

import (
	"context"
	"encoding/json"
	"os"

	"github.com/pkg/errors"
)

type LocalFileClient struct {
	Trie *Trie
}

func NewLocalFileClient(filePath string) (*LocalFileClient, error) {
	var vocabularies []Vocabulary
	bytes, err := os.ReadFile(filePath)
	if err != nil {
		return nil, errors.Wrap(err, "error when reading vocabulary json")
	}
	err = json.Unmarshal(bytes, &vocabularies)
	if err != nil {
		return nil, errors.Wrap(err, "error when unmarshaling vocabulary json")
	}

	tree := InitTrie()
	for _, voc := range vocabularies {
		tree.Insert(voc)
	}

	return &LocalFileClient{
		Trie: tree,
	}, nil
}

func (lfc *LocalFileClient) SuggestWordsByPrefix(ctx context.Context, prefix string) ([]Vocabulary, error) {
	vocabularies := lfc.Trie.Suggest(ctx, prefix)
	return vocabularies, nil
}
