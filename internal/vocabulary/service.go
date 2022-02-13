package vocabulary

import (
	"context"
)

type Client interface {
	FindMeaningByWord(ctx context.Context, word string) (*Vocabulary, error)
}

type DefaultService struct {
	client Client
}

func NewService(repository Client) *DefaultService {
	return &DefaultService{client: repository}
}

func (s *DefaultService) GetMeaningByWord(ctx context.Context, word string) (*Vocabulary, error) {
	if word == "" {
		return nil, ErrWordIsEmpty
	}
	return s.client.FindMeaningByWord(ctx, word)
}
