package vocabulary

import (
	"context"
	"encoding/json"
	"github.com/pkg/errors"
	"os"
)

type LocalFileClient struct {
	vocabularies []*Vocabulary
}

func NewLocalFileClient() (*LocalFileClient, error) {
	var vocabularies []*Vocabulary
	bytes, err := os.ReadFile("internal/vocabulary/vocabulary.json")
	if err != nil {
		return nil, errors.Wrap(err, "error when reading vocabulary json")
	}
	err = json.Unmarshal(bytes, &vocabularies)
	if err != nil {
		return nil, errors.Wrap(err, "error when unmarshaling vocabulary json")
	}
	return &LocalFileClient{
		vocabularies: vocabularies,
	}, nil
}

func (lfc *LocalFileClient) FindMeaningByWord(ctx context.Context, word string) (*Vocabulary, error) {
	return nil, nil
}
