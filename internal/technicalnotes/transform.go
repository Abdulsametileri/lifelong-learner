package technicalnotes

import (
	"encoding/json"
	"os"
	"strings"

	"github.com/pkg/errors"
	"google.golang.org/api/docs/v1"
)

func transformResponse(doc *docs.Document) ([]Note, error) {
	docBytes, err := doc.Body.MarshalJSON()
	if err != nil {
		return nil, errors.Wrap(err, "error when marshaling doc body")
	}
	response := GoogleDocResponse{}
	err = json.Unmarshal(docBytes, &response)
	if err != nil {
		return nil, errors.Wrap(err, "error when unmarshaling the transform response")
	}

	transform := make([]Note, 0, len(response.Content))

	for _, r := range response.Content {
		if r.Paragraph.Elements == nil {
			continue
		}

		var content string
		for _, p := range r.Paragraph.Elements {
			content = strings.ReplaceAll(p.TextRun.Content, "\n", "")
			content = strings.ReplaceAll(content, "- ", "")
			content = strings.TrimSpace(content)
		}
		style := ParagraphStyle(r.Paragraph.ParagraphStyle.NamedStyleType)

		if content == "" || style == "" {
			continue
		}
		if style == PTITLE {
			continue
		}

		transform = append(transform, Note{
			Paragraph: content,
		})
	}

	return transform, nil
}

func createLocalDataFile(tr []Note) error {
	docBytes, err := json.Marshal(&tr)
	if err != nil {
		return errors.Wrap(err, "error marshaling doc")
	}

	err = os.WriteFile("./internal/technicalnotes/transform.json", docBytes, 0644)
	if err != nil {
		return errors.Wrap(err, "error when creating local json file")
	}

	return nil
}
