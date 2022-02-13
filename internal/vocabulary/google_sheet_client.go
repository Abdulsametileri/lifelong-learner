package vocabulary

import (
	"context"
	"encoding/json"
	"os"

	"github.com/pkg/errors"
	"google.golang.org/api/option"
	"google.golang.org/api/sheets/v4"
)

type GoogleSheetClient struct {
	vocabularies []*Vocabulary
}

func NewGoogleSheetClient(apiKey, spreadSheetID string, isVocabularyFileWillCreate bool) (*GoogleSheetClient, error) {
	svc, err := sheets.NewService(
		context.Background(),
		option.WithAPIKey(apiKey),
	)
	if err != nil {
		return nil, errors.Wrap(err, "error when google sheets new service")
	}

	resp, err := svc.Spreadsheets.
		Get(spreadSheetID).
		IncludeGridData(true).
		Do()
	if err != nil {
		return nil, errors.Wrap(err, "error when reading values from spreadsheet")
	}

	vocabularies := transformSheetResponse(resp)

	if isVocabularyFileWillCreate {
		return nil, createVocabularyFile(vocabularies)
	}

	return &GoogleSheetClient{
		vocabularies: vocabularies,
	}, nil
}

func (gsc *GoogleSheetClient) FindMeaningByWord(ctx context.Context, word string) (*Vocabulary, error) {
	return nil, nil
}

func transformSheetResponse(resp *sheets.Spreadsheet) []*Vocabulary {
	firstSheet := resp.Sheets[0]
	rows := firstSheet.Data[0].RowData

	vocabularies := make([]*Vocabulary, 0, len(rows))

	for _, row := range rows {
		cellData := row.Values

		voc := &Vocabulary{}
		if len(cellData) > 0 {
			voc.Word = cellData[0].FormattedValue
		}
		if len(cellData) > 1 {
			voc.Meaning = cellData[1].FormattedValue
		}
		if len(cellData) > 2 {
			voc.Sentence = cellData[2].FormattedValue
		}

		vocabularies = append(vocabularies, voc)
	}

	return vocabularies
}

func createVocabularyFile(vocabularies []*Vocabulary) error {
	vocabularyFile, err := os.Create("internal/vocabulary/vocabulary.json")
	if err != nil {
		return errors.Wrap(err, "error when creating vocabulary json")
	}
	defer vocabularyFile.Close()

	vocabularyBytes, err := json.Marshal(vocabularies)
	if err != nil {
		return errors.Wrap(err, "error when marshaling vocabularies")
	}
	_, _ = vocabularyFile.Write(vocabularyBytes)

	return nil
}
