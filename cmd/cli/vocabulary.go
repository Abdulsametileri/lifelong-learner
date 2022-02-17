package main

import (
	"github.com/Abdulsametileri/lifelong-learner/internal/vocabulary"
	"github.com/olekukonko/tablewriter"
	"github.com/pkg/errors"
	"github.com/spf13/cobra"
	"os"
)

var word string
var isGoogleSheetClientEnabled bool

var vocabularyCmd = &cobra.Command{
	Use:     "vocabulary",
	Aliases: []string{"v", "voc"},
	Short:   "This allows you to do operations related to vocabulary like searching with specified word",
	Example: "learn vocabulary --word=shoulder",
	RunE: func(cmd *cobra.Command, args []string) error {
		if word == "" {
			return errors.New("word flag is required")
		}

		vocabularyClient, err := createVocabularyClient()
		if err != nil {
			return err
		}

		vocabularyService := vocabulary.NewService(vocabularyClient)
		results, err := vocabularyService.SuggestWordsByPrefix(cmd.Context(), word)
		if err != nil {
			return err
		}

		table := tablewriter.NewWriter(os.Stdout)
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

		return nil
	},
}

func createVocabularyClient() (vocabulary.Client, error) {
	if isGoogleSheetClientEnabled {
		return vocabulary.NewGoogleSheetClient(
			os.Getenv("SHEETS_API_KEY"),
			os.Getenv("SPREADSHEET_ID"),
			false,
		)
	}
	return vocabulary.NewLocalFileClient("./internal/vocabulary/vocabulary.json")
}

//nolint:gochecknoinits
func init() {
	vocabularyCmd.Flags().StringVarP(&word, "word", "w", "", "name of the word you search for")
	vocabularyCmd.Flags().BoolVarP(&isGoogleSheetClientEnabled, "googlesheetenabled", "g", false, "get all vocabularies from google sheet")
	_ = vocabularyCmd.MarkFlagRequired("word")

	rootCmd.AddCommand(vocabularyCmd)
}
