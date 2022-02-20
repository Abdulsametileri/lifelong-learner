package main

import (
	"fmt"
	"github.com/pkg/errors"
	"github.com/spf13/cobra"
)

var keyword string

var technicalNotesCmd = &cobra.Command{
	Use:     "technical-notes",
	Aliases: []string{"tn"},
	Short:   "This allows you to do fulltextsearch within specified document",
	Example: "learn technical-notes --keyword=scalability",
	RunE: func(cmd *cobra.Command, args []string) error {
		if keyword == "" {
			return errors.New("keyword flg cannot be empty")
		}
		fmt.Println("keyword:", keyword)
		return nil
	},
}

//nolint:gochecknoinits
func init() {
	technicalNotesCmd.Flags().StringVarP(&keyword, "keyword", "k", "", "The keyword which you wanna search within documents")
	_ = technicalNotesCmd.MarkFlagRequired("keyword")

	rootCmd.AddCommand(technicalNotesCmd)
}
