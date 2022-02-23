package main

import (
	"io"
	"os"

	"github.com/Abdulsametileri/lifelong-learner/internal/vocabulary"
	"github.com/olekukonko/tablewriter"
	"github.com/pkg/errors"
	"github.com/spf13/cobra"
)

var isGoogleSheetClientEnabled bool
var prefix string

type VocabularyCommandRunner struct {
	Prefix string
	Client vocabulary.Client
}

var vocabularyCmd = &cobra.Command{
	Use:     "vocabulary",
	Aliases: []string{"v", "voc"},
	Short:   "This allows you to do prefix search related to predefined vocabulary list",
	Example: "learn vocabulary --prefix=be",
	RunE: func(cmd *cobra.Command, args []string) error {
		vcr := VocabularyCommandRunner{
			Prefix: prefix,
		}
		if err := vcr.Validate(); err != nil {
			return err
		}

		vocabularyClient, err := createVocabularyClient()
		if err != nil {
			return err
		}
		vcr.Client = vocabularyClient

		vocabularyService := vocabulary.NewService(vocabularyClient)
		results, err := vocabularyService.SuggestWordsByPrefix(cmd.Context(), prefix)
		if err != nil {
			return err
		}

		vcr.DisplayResults(os.Stdout, results)

		return nil
	},
}

func (vcr *VocabularyCommandRunner) Validate() error {
	if vcr.Prefix == "" {
		return errors.New("prefix flags cannot be empty")
	}
	return nil
}

func (vcr *VocabularyCommandRunner) DisplayResults(writer io.Writer, results []*vocabulary.Vocabulary) {
	table := tablewriter.NewWriter(writer)
	table.SetHeader([]string{"Word", "Meaning", "Sentence"})
	table.SetHeaderColor(
		tablewriter.Colors{tablewriter.BgWhiteColor, tablewriter.BgBlueColor},
		tablewriter.Colors{tablewriter.BgWhiteColor, tablewriter.BgBlueColor},
		tablewriter.Colors{tablewriter.BgWhiteColor, tablewriter.BgBlueColor},
	)

	for i := range results {
		result := results[i]
		table.Append([]string{result.Word, result.Meaning, result.Sentence})
		table.SetRowLine(true)
	}

	table.Render()
}

func createVocabularyClient() (vocabulary.Client, error) {
	if isGoogleSheetClientEnabled {
		gsc, err := vocabulary.NewGoogleSheetClient(
			os.Getenv("SHEETS_API_KEY"),
			os.Getenv("SPREADSHEET_ID"),
		)
		if err != nil {
			return nil, err
		}
		spreadsheet, err := gsc.GetSpreadsheet()
		if err != nil {
			return nil, err
		}

		vocabularies := gsc.TransformGoogleSpreadsheetResponse(spreadsheet)
		err = gsc.CreateVocabularyFile("./internal/vocabulary/vocabulary.json", vocabularies)
		if err != nil {
			return nil, err
		}
		gsc.FillTrieWithVocabularies(vocabularies)

		return gsc, nil
	}
	return vocabulary.NewLocalFileClient("./internal/vocabulary/vocabulary.json")
}

//nolint:gochecknoinits
func init() {
	vocabularyCmd.Flags().StringVarP(&prefix, "prefix", "p", "", "name of the prefix you search for")
	vocabularyCmd.Flags().BoolVarP(&isGoogleSheetClientEnabled, "googlesheetenabled", "g", false, "get all vocabularies from google sheet api")
	_ = vocabularyCmd.MarkFlagRequired("prefix")

	rootCmd.AddCommand(vocabularyCmd)
}
