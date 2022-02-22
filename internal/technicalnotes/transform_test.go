package technicalnotes

import (
	"encoding/json"
	"github.com/stretchr/testify/assert"
	"google.golang.org/api/docs/v1"
	"os"
	"testing"
)

func Test_TransformResponse(t *testing.T) {
	t.Run("Should parse google doc response and transform correctly", func(t *testing.T) {
		docBytes, err := os.ReadFile("./example-google-docs-response.json")
		if err != nil {
			t.Fatalf("Error reading example google doc response %#v", err)
		}
		var doc *docs.Document
		err = json.Unmarshal(docBytes, &doc)
		if err != nil {
			t.Fatalf("Error unmarshalling json file %#v", err)
		}

		response, err := transformResponse(doc)
		assert.Nil(t, err)
		assert.Len(t, response, 1)
		assert.Equal(t, response[0].Paragraph, "Send a message to another process, to be handled asynchronously (stream processing)")
	})
}
func Test_CreateLocalDataFile(t *testing.T) {
	tr := []Note{
		{Paragraph: "Sentence 1"},
		{Paragraph: "Sentence 2"},
		{Paragraph: "Sentence 3"},
	}
	err := createLocalDataFile("/tmp/testtransform.json", tr)
	assert.Nil(t, err)
	if err == nil {
		os.Remove("/tmp/testtransform.json")
	}
}
