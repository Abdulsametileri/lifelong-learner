package main

import (
	"context"
	"io"
	"os"

	"github.com/Abdulsametileri/lifelong-learner/internal/vocabulary"
	"github.com/olekukonko/tablewriter"
	"github.com/pkg/errors"
	"github.com/spf13/cobra"
)

type VocabularyCommandRunner struct {
	Prefix                     string
	IsGoogleSheetClientEnabled bool
	Client                     vocabulary.Client
	VocabularyFilePath         string
}

var vocabularyCmd = &cobra.Command{
	Use:     "vocabulary",
	Aliases: []string{"v", "voc"},
	Short:   "This allows you to do prefix search related to predefined vocabulary list",
	Example: "learn vocabulary --prefix=be",
	RunE: func(cmd *cobra.Command, args []string) error {
		prefix, _ := cmd.Flags().GetString("prefix")
		isGoogleSheetClientEnabled, _ := cmd.Flags().GetBool("googlesheetenabled")

		vcr := VocabularyCommandRunner{
			Prefix:                     prefix,
			IsGoogleSheetClientEnabled: isGoogleSheetClientEnabled,
			VocabularyFilePath:         "./internal/vocabulary/vocabulary.json",
		}

		return vcr.Run(cmd.Context(), os.Stdout)
	},
}

//nolint:gochecknoinits
func init() {
	vocabularyCmd.Flags().StringP("prefix", "p", "", "name of the prefix you search for")
	vocabularyCmd.Flags().BoolP("googlesheetenabled", "g", false, "get all vocabularies from google sheet api")
	_ = vocabularyCmd.MarkFlagRequired("prefix")

	rootCmd.AddCommand(vocabularyCmd)
}

func (vcr *VocabularyCommandRunner) Run(ctx context.Context, writer io.Writer) error {
	if err := vcr.Validate(); err != nil {
		return err
	}

	vocabularyClient, err := vcr.createVocabularyClient()
	if err != nil {
		return err
	}
	vcr.Client = vocabularyClient

	results, err := vcr.GetSuggests(ctx)
	if err != nil {
		return err
	}

	vcr.DisplayResults(writer, results)

	return nil
}

func (vcr *VocabularyCommandRunner) Validate() error {
	if vcr.Prefix == "" {
		return errors.New("prefix flags cannot be empty")
	}
	return nil
}

func (vcr *VocabularyCommandRunner) GetSuggests(ctx context.Context) ([]vocabulary.Vocabulary, error) {
	results, err := vcr.Client.SuggestWordsByPrefix(ctx, vcr.Prefix)
	if err != nil {
		return nil, err
	}
	return results, nil
}

func (vcr *VocabularyCommandRunner) DisplayResults(writer io.Writer, results []vocabulary.Vocabulary) {
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

func (vcr *VocabularyCommandRunner) createVocabularyClient() (vocabulary.Client, error) {
	if vcr.IsGoogleSheetClientEnabled {
		gsc, err := vocabulary.NewGoogleSheetClient()
		if err != nil {
			return nil, err
		}
		spreadsheet, err := gsc.GetSpreadsheet()
		if err != nil {
			return nil, err
		}

		vocabularies := gsc.TransformGoogleSpreadsheetResponse(spreadsheet)
		err = gsc.CreateVocabularyFile(vcr.VocabularyFilePath, vocabularies)
		if err != nil {
			return nil, err
		}
		gsc.FillTrieWithVocabularies(vocabularies)

		return gsc, nil
	}
	return vocabulary.NewLocalFileClient(vcr.VocabularyFilePath)
}
