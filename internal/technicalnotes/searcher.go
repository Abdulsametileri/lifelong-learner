package technicalnotes

type Searcher interface {
	Search(keyword string) (SearchResponse, error)
}
