package technicalnotes

import (
	"context"
	"os"
	"strings"

	"github.com/pkg/errors"
	"golang.org/x/oauth2/google"
	"google.golang.org/api/docs/v1"
	"google.golang.org/api/option"
)

type GoogleDocsClient struct {
	svc                        *docs.Service
	docID                      string
	CredentialsFilePath        string
	LocalParagraphDataFilePath string
	LocalMainTitleDataFilePath string
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
		svc:                        svc,
		docID:                      os.Getenv("DOC_ID"),
		CredentialsFilePath:        credentialsFilePath,
		LocalParagraphDataFilePath: localDataFilePath,
		LocalMainTitleDataFilePath: strings.Replace(localDataFilePath, "transform.json", "main-title.json", 1),
	}, nil
}

func (gdc *GoogleDocsClient) GetDocument() (*docs.Document, error) {
	doc, err := gdc.svc.Documents.Get(gdc.docID).Do()
	if err != nil {
		return nil, errors.Wrap(err, "unable to get specified document")
	}
	return doc, nil
}

func (gdc *GoogleDocsClient) GetDocumentAndTransformResponse() (Document, error) {
	doc, err := gdc.GetDocument()
	if err != nil {
		return Document{}, err
	}

	transformed, err := transformResponse(doc)
	if err != nil {
		return Document{}, err
	}

	return transformed, nil
}

func (gdc *GoogleDocsClient) GetDocumentAndWriteResultsToFile() error {
	transformed, err := gdc.GetDocumentAndTransformResponse()
	if err != nil {
		return err
	}

	err = createLocalFileWithSpecifiedData(gdc.LocalMainTitleDataFilePath, transformed.MainTitles)
	if err != nil {
		return err
	}
	return createLocalFileWithSpecifiedData(gdc.LocalParagraphDataFilePath, transformed.Notes)
}
