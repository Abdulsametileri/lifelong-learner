package technicalnotes

type TransformModel struct {
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
