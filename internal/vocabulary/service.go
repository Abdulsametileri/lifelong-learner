package vocabulary

import (
	"context"
)

type Client interface {
	SuggestWordsByPrefix(ctx context.Context, prefix string) ([]*Vocabulary, error)
}

type DefaultService struct {
	client Client
}

func NewService(repository Client) *DefaultService {
	return &DefaultService{client: repository}
}

func (s *DefaultService) SuggestWordsByPrefix(ctx context.Context, prefix string) ([]*Vocabulary, error) {
	if prefix == "" {
		return nil, ErrFieldIsEmpty("Prefix")
	}
	return s.client.SuggestWordsByPrefix(ctx, prefix)
}
