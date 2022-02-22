package main

import (
	"context"
	"fmt"
	"io"
	"os"
	"strconv"

	"github.com/Abdulsametileri/lifelong-learner/internal/technicalnotes"
	"github.com/olekukonko/tablewriter"
	"github.com/pkg/errors"
	"github.com/spf13/cobra"
)

var keyword string
var isGoogleDocClientEnabled bool

type Client interface {
	CreateLocalDataFile() error
}

type TechnicalNoteCommandRunner struct {
	GoogleClient Client
	Searcher     technicalnotes.Searcher
	Keyword      string
}

var technicalNotesCmd = &cobra.Command{
	Use:     "technical-notes",
	Aliases: []string{"tn"},
	Short:   "This allows you to do fulltextsearch within specified document",
	Example: "learn technical-notes --keyword=scalability",
	RunE: func(cmd *cobra.Command, args []string) error {
		tncr := TechnicalNoteCommandRunner{
			Keyword: keyword,
		}

		if err := tncr.Validate(); err != nil {
			return err
		}

		breveSearch, err := technicalnotes.InitBreveClient(true)
		if err != nil {
			return err
		}
		tncr.Searcher = breveSearch

		if isGoogleDocClientEnabled {
			fmt.Println("Google Doc is enabled")
			client, err := technicalnotes.NewGoogleDocsClient(os.Getenv("DOC_ID"))
			if err != nil {
				return err
			}
			tncr.GoogleClient = client
			err = tncr.GoogleClient.CreateLocalDataFile()

			err = tncr.Searcher.RefleshIndex()
			if err != nil {
				return err
			}
		}

		searchRes, err := tncr.Run(cmd.Context())
		if err != nil {
			return err
		}

		tncr.DisplayResults(os.Stdout, searchRes)

		return nil
	},
}

func (tncr *TechnicalNoteCommandRunner) Validate() error {
	if tncr.Keyword == "" {
		return errors.New("keyword flg cannot be empty")
	}
	return nil
}

func (tncr *TechnicalNoteCommandRunner) Run(ctx context.Context) (*technicalnotes.SearchResponse, error) {
	searchRes, err := tncr.Searcher.Search(ctx, tncr.Keyword)
	if err != nil {
		return nil, err
	}

	return &searchRes, nil
}

func (tncr *TechnicalNoteCommandRunner) DisplayResults(writer io.Writer, searchRes *technicalnotes.SearchResponse) {
	table := tablewriter.NewWriter(writer)
	table.SetHeader([]string{"Notes"})
	table.SetColWidth(120)
	table.SetHeaderColor(
		tablewriter.Colors{tablewriter.BgWhiteColor, tablewriter.BgBlueColor},
	)

	table.SetFooter([]string{
		fmt.Sprintf("Total Result: %s\nTotal Time: %s",
			strconv.FormatUint(searchRes.TotalResult, 10),
			searchRes.TotalTime.String()),
	})

	for _, data := range searchRes.Results {
		table.Append([]string{data})
		table.SetRowLine(true)
	}

	table.Render()
}

//nolint:gochecknoinits
func init() {
	technicalNotesCmd.Flags().StringVarP(&keyword, "keyword", "k", "", "The keyword which you wanna search within documents")
	technicalNotesCmd.Flags().BoolVarP(&isGoogleDocClientEnabled, "googledocenabled", "g", false, "get all notes from google docs api")

	_ = technicalNotesCmd.MarkFlagRequired("keyword")

	rootCmd.AddCommand(technicalNotesCmd)
}
