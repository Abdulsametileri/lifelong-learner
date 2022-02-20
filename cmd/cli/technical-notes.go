package main

import (
	"fmt"
	"os"
	"strconv"

	"github.com/Abdulsametileri/lifelong-learner/internal/technicalnotes"
	"github.com/olekukonko/tablewriter"
	"github.com/pkg/errors"
	"github.com/spf13/cobra"
)

var keyword string
var isGoogleDocClientEnabled bool

var technicalNotesCmd = &cobra.Command{
	Use:     "technical-notes",
	Aliases: []string{"tn"},
	Short:   "This allows you to do fulltextsearch within specified document",
	Example: "learn technical-notes --keyword=scalability",
	RunE: func(cmd *cobra.Command, args []string) error {
		if keyword == "" {
			return errors.New("keyword flg cannot be empty")
		}

		refleshIndexData := false
		if isGoogleDocClientEnabled {
			fmt.Println("Google Doc is enabled")
			_, err := technicalnotes.NewGoogleDocsClient(os.Getenv("DOC_ID"))
			if err != nil {
				return err
			}
			refleshIndexData = true
		}

		client, err := technicalnotes.InitBreveClient(refleshIndexData, true)
		if err != nil {
			return errors.Wrap(err, "error when initializing breve client")
		}

		searchRes, err := client.Search(nil, keyword)
		if err != nil {
			return errors.Wrap(err, "error when searching using breve clinet")
		}

		table := tablewriter.NewWriter(os.Stdout)
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

		return nil
	},
}

//nolint:gochecknoinits
func init() {
	technicalNotesCmd.Flags().StringVarP(&keyword, "keyword", "k", "", "The keyword which you wanna search within documents")
	technicalNotesCmd.Flags().BoolVarP(&isGoogleDocClientEnabled, "googledocenabled", "g", false, "get all notes from google docs api")

	_ = technicalNotesCmd.MarkFlagRequired("keyword")

	rootCmd.AddCommand(technicalNotesCmd)
}
