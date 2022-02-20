package technicalnotes

import "context"

type Searcher interface {
	Search(ctx context.Context, keyword string) (SearchResponse, error)
}
