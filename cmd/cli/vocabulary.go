package main

import "github.com/spf13/cobra"

var word string

var vocabularyCmd = &cobra.Command{
	Use:     "vocabulary",
	Aliases: []string{"v", "voc"},
	Short:   "This allows you to do operations related to vocabulary like searching with specified word",
	Example: "learn vocabulary --word=shoulder",
	Run: func(cmd *cobra.Command, args []string) {

	},
}

//nolint:gochecknoinits
func init() {
	vocabularyCmd.Flags().StringVarP(&word, "word", "w", "", "name of the word you search for")
	_ = vocabularyCmd.MarkFlagRequired("word")

	rootCmd.AddCommand(vocabularyCmd)
}
