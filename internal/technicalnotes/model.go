package technicalnotes

import "time"

type GoogleDocResponse struct {
	Content []struct {
		Paragraph struct {
			Elements []struct {
				TextRun struct {
					Content string `json:"content"`
				} `json:"textRun"`
			} `json:"elements"`
			ParagraphStyle struct {
				NamedStyleType string `json:"namedStyleType"`
			} `json:"paragraphStyle"`
		} `json:"paragraph"`
	} `json:"content"`
}

type ParagraphStyle string

const (
	PNORMAL = "NORMAL_TEXT"
	PTITLE  = "TITLE"
)

type Note struct {
	Paragraph string `json:"paragraph"`
}

type SearchResponse struct {
	TotalTime   time.Duration `json:"totalTime"`
	TotalResult uint64        `json:"totalResult"`
	Results     []string      `json:"results"`
}
