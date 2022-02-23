package vocabulary

import (
	"encoding/json"
	"github.com/stretchr/testify/assert"
	"google.golang.org/api/sheets/v4"
	"os"
	"testing"
)

func TestGoogleSheetClient_TransformGoogleSpreadsheetResponse(t *testing.T) {
	var resp *sheets.Spreadsheet
	file, err := os.ReadFile("./example_google_sheet_response.json")
	if err != nil {
		t.Fatal(t, err)
	}

	err = json.Unmarshal(file, &resp)
	if err != nil {
		t.Fatal(t, err)
	}

	gsc := GoogleSheetClient{}
	response := gsc.TransformGoogleSpreadsheetResponse(resp)

	const index = 5
	assert.Equal(t, "a sigh of relief", response[index].Word)
	assert.Equal(t, "oh, oh demek, oh çekmek", response[index].Meaning)
	assert.Equal(t, "I breathe a sigh of relief", response[index].Sentence)
}

func TestGoogleSheetClient_CreateVocabularyFile(t *testing.T) {
	gsc := GoogleSheetClient{}
	voc := []Vocabulary{
		{
			Word:     "d1",
			Meaning:  "m1",
			Sentence: "s1",
		},
	}
	err := gsc.CreateVocabularyFile("/tmp/testvocabulary.json", voc)
	assert.Nil(t, err)
	if err == nil {
		os.Remove("/tmp/testvocabulary.json")
	}
}
