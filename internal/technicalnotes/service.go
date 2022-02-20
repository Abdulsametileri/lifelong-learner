package technicalnotes

import "context"

type DefaultService struct {
	Search Searcher
}

func NewService(searcher Searcher) *DefaultService {
	return &DefaultService{Search: searcher}
}

func (d *DefaultService) SearchByKeyword(ctx context.Context, keyword string) (SearchResponse, error) {
	return d.Search.Search(ctx, keyword)
}
