package vocabulary

import (
	"context"
)

type Client interface {
	FindMeaningByWord(ctx context.Context, word string) (*Vocabulary, error)
	SuggestWordsByPrefix(ctx context.Context, prefix string) ([]*Vocabulary, error)
}

type DefaultService struct {
	client Client
}

func NewService(repository Client) *DefaultService {
	return &DefaultService{client: repository}
}

func (s *DefaultService) GetMeaningByWord(ctx context.Context, word string) (*Vocabulary, error) {
	if word == "" {
		return nil, ErrFieldIsEmpty("Word")
	}
	return s.client.FindMeaningByWord(ctx, word)
}

func (s *DefaultService) SuggestWordsByPrefix(ctx context.Context, prefix string) ([]*Vocabulary, error) {
	if prefix == "" {
		return nil, ErrFieldIsEmpty("Prefix")
	}
	return s.client.SuggestWordsByPrefix(ctx, prefix)
}
