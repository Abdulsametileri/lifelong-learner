package technicalnotes

import (
	"context"
	"encoding/json"
	"github.com/pkg/errors"
	"golang.org/x/oauth2/google"
	"google.golang.org/api/docs/v1"
	"google.golang.org/api/option"
	"io/ioutil"
	"log"
	"os"
)

type GoogleDocsClient struct{}

func NewGoogleDocsClient() (*GoogleDocsClient, error) {
	b, err := ioutil.ReadFile("./internal/technicalnotes/credentials.json")
	if err != nil {
		log.Fatalf("Unable to read client secret file: %v", err)
	}

	config, err := google.ConfigFromJSON(b, "https://www.googleapis.com/auth/documents.readonly")
	if err != nil {
		log.Fatalf("Unable to parse client secret file to config: %v", err)
	}
	client := getHTTPClient(config)

	svc, err := docs.NewService(context.Background(), option.WithHTTPClient(client))
	if err != nil {
		return nil, errors.Wrap(err, "error when initializing google docs service")
	}

	docID := os.Getenv("DOC_ID")
	doc, err := svc.Documents.Get(docID).Do()
	if err != nil {
		return nil, errors.Wrap(err, "unable to get specified document")
	}

	createLocalDataFile(transformResponse(doc))

	return nil, nil
}

func transformResponse(doc *docs.Document) TransformModel {
	docBytes, err := doc.Body.MarshalJSON()
	if err != nil {
		log.Fatal(errors.Wrap(err, "error when marshaling doc vody"))
	}
	transform := TransformModel{}
	err = json.Unmarshal(docBytes, &transform)
	if err != nil {
		log.Fatal(errors.Wrap(err, "error when unmarshaling the transform response"))
	}
	return transform
}

func createLocalDataFile(doc TransformModel) {
	docBytes, err := json.Marshal(&doc)
	if err != nil {
		log.Fatal(errors.Wrap(err, "error marshalling doc"))
	}
	err = os.WriteFile("./internal/technicalnotes/transform.json", docBytes, 0600)
	if err != nil {
		log.Fatal(errors.Wrap(err, "error when creating local json file"))
	}
}
