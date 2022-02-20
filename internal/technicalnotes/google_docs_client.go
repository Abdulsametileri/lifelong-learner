package technicalnotes

import (
	"context"
	"io/ioutil"
	"log"

	"github.com/pkg/errors"
	"golang.org/x/oauth2/google"
	"google.golang.org/api/docs/v1"
	"google.golang.org/api/option"
)

type GoogleDocsClient struct{}

func NewGoogleDocsClient(docID string) (*GoogleDocsClient, error) {
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

	doc, err := svc.Documents.Get(docID).Do()
	if err != nil {
		return nil, errors.Wrap(err, "unable to get specified document")
	}

	createLocalDataFile(transformResponse(doc))

	return nil, nil
}
