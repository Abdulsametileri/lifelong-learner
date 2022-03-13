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

type Client interface {
	GetDocumentAndWriteResultToFile() error
}

type TechnicalNoteCommandRunner struct {
	GoogleClient                    Client
	IsGoogleDocClientEnabled        bool
	Searcher                        technicalnotes.Searcher
	Keyword                         string
	BreveIndexFilePath              string
	BreveDataFilePath               string
	GoogleClientCredentialsFilePath string
	GoogleClientLocalDatFilePath    string
}

var technicalNotesCmd = &cobra.Command{
	Use:     "technical-notes",
	Aliases: []string{"tn"},
	Short:   "This allows you to do fulltextsearch within specified document",
	Example: "learn technical-notes --keyword=scalability",
	RunE: func(cmd *cobra.Command, args []string) error {
		keyword, _ := cmd.Flags().GetString("keyword")
		IsGoogleDocClientEnabled, _ := cmd.Flags().GetBool("googledocenabled")

		tncr := TechnicalNoteCommandRunner{
			Keyword:                         keyword,
			IsGoogleDocClientEnabled:        IsGoogleDocClientEnabled,
			BreveIndexFilePath:              "./internal/technicalnotes/notes.breve",
			BreveDataFilePath:               "./internal/technicalnotes/transform.json",
			GoogleClientCredentialsFilePath: "./internal/technicalnotes/credentials.json",
			GoogleClientLocalDatFilePath:    "./internal/technicalnotes/transform.json",
		}

		return tncr.Run(cmd.Context(), os.Stdout)
	},
}

//nolint:gochecknoinits
func init() {
	technicalNotesCmd.Flags().StringP("keyword", "k", "", "The keyword which you wanna search within documents")
	technicalNotesCmd.Flags().BoolP("googledocenabled", "g", false, "get all notes from google docs api")

	_ = technicalNotesCmd.MarkFlagRequired("keyword")

	rootCmd.AddCommand(technicalNotesCmd)
}

func (tncr *TechnicalNoteCommandRunner) Run(ctx context.Context, writer io.Writer) error {
	if err := tncr.Validate(); err != nil {
		return err
	}
	breveSearch, err := technicalnotes.InitBreveClient(tncr.BreveIndexFilePath, tncr.BreveDataFilePath, true)
	if err != nil {
		return err
	}
	tncr.Searcher = breveSearch

	if tncr.IsGoogleDocClientEnabled {
		fmt.Println("Google Doc is enabled")
		client, err := technicalnotes.NewGoogleDocsClient(
			tncr.GoogleClientCredentialsFilePath,
			tncr.GoogleClientLocalDatFilePath,
		)
		if err != nil {
			return err
		}
		tncr.GoogleClient = client
		err = tncr.GoogleClient.GetDocumentAndWriteResultToFile() //TODO: index olayları
		if err != nil {
			return err
		}
		err = tncr.Searcher.RefleshIndex()
		if err != nil {
			return err
		}
	}

	searchRes, err := tncr.Search(ctx)
	if err != nil {
		return err
	}

	tncr.DisplayResults(writer, searchRes)

	return nil
}

func (tncr *TechnicalNoteCommandRunner) Validate() error {
	if tncr.Keyword == "" {
		return errors.New("keyword flag cannot be empty")
	}
	return nil
}

func (tncr *TechnicalNoteCommandRunner) Search(ctx context.Context) (*technicalnotes.SearchResponse, error) {
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
