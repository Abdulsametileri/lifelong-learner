package technicalnotes

import (
	"encoding/json"
	"os"
	"strings"

	"github.com/pkg/errors"
	"google.golang.org/api/docs/v1"
)

func transformResponse(doc *docs.Document) (Document, error) {
	docBytes, err := doc.Body.MarshalJSON()
	if err != nil {
		return Document{}, errors.Wrap(err, "error when marshaling doc body")
	}
	response := GoogleDocResponse{}
	err = json.Unmarshal(docBytes, &response)
	if err != nil {
		return Document{}, errors.Wrap(err, "error when unmarshaling the transform response")
	}

	notes := make([]Note, 0, len(response.Content))
	mainTitles := make([]string, 0)

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
			mainTitles = append(mainTitles, content)
			continue
		}

		notes = append(notes, Note{
			Paragraph: content,
		})
	}

	return Document{
		MainTitles: mainTitles,
		Notes:      notes,
	}, nil
}

func createLocalFileWithSpecifiedData(dataFilePath string, tr interface{}) error {
	docBytes, err := json.Marshal(&tr)
	if err != nil {
		return errors.Wrap(err, "error marshaling doc")
	}

	err = os.WriteFile(dataFilePath, docBytes, 0600)
	if err != nil {
		return errors.Wrap(err, "error when creating local json file")
	}

	return nil
}
