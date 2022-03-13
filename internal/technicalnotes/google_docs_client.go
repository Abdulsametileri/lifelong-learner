package technicalnotes

import (
	"context"
	"os"

	"github.com/pkg/errors"
	"golang.org/x/oauth2/google"
	"google.golang.org/api/docs/v1"
	"google.golang.org/api/option"
)

type GoogleDocsClient struct {
	svc                 *docs.Service
	docID               string
	CredentialsFilePath string
	LocalDataFilePath   string
}

func NewGoogleDocsClient(credentialsFilePath, localDataFilePath string) (*GoogleDocsClient, error) {
	b, err := os.ReadFile(credentialsFilePath)
	if err != nil {
		return nil, errors.Wrap(err, "Unable to read client secret file")
	}

	config, err := google.ConfigFromJSON(b, "https://www.googleapis.com/auth/documents.readonly")
	if err != nil {
		return nil, errors.Wrap(err, "Unable to parse client secret file to config")
	}
	client := getHTTPClient(config)

	svc, err := docs.NewService(context.Background(), option.WithHTTPClient(client))
	if err != nil {
		return nil, errors.Wrap(err, "error when initializing google docs service")
	}

	return &GoogleDocsClient{
		svc:                 svc,
		docID:               os.Getenv("DOC_ID"),
		CredentialsFilePath: credentialsFilePath,
		LocalDataFilePath:   localDataFilePath,
	}, nil
}

func (gdc *GoogleDocsClient) GetDocumentAndWriteResultToFile() error {
	doc, err := gdc.GetDocument()
	if err != nil {
		return err
	}
	return gdc.CreateLocalDataFile(doc)
}

func (gdc *GoogleDocsClient) GetDocument() (*docs.Document, error) {
	doc, err := gdc.svc.Documents.Get(gdc.docID).Do()
	if err != nil {
		return nil, errors.Wrap(err, "unable to get specified document")
	}
	return doc, nil
}

func (gdc *GoogleDocsClient) CreateLocalDataFile(doc *docs.Document) error {
	transformed, err := transformResponse(doc)
	if err != nil {
		return err
	}
	return createLocalDataFile(gdc.LocalDataFilePath, transformed)
}
