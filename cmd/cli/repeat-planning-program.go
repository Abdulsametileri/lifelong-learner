package main

import (
	"bytes"
	"fmt"
	"os"
	"time"

	"github.com/Abdulsametileri/lifelong-learner/internal/technicalnotes"
	"github.com/pkg/errors"
	"github.com/spf13/cobra"
)

const repeatPlanningProgramFilePath = "./repeatPlanningProgram.txt"

var repeatPlanningProgram = &cobra.Command{
	Use:     "repeat-planning-program",
	Aliases: []string{"rpp"},
	Short:   "This shows to our monthly program on technical book notes",
	Example: "learn repeat-planning-program",
	RunE: func(cmd *cobra.Command, args []string) error {
		isExist, _ := checkRepeatPlanningProgramFileExist()
		if isExist {
			return errors.New("file already exist please check")
		}

		client, err := technicalnotes.NewGoogleDocsClient(
			"./internal/technicalnotes/credentials.json",
			"./internal/technicalnotes/transform.json",
		)
		if err != nil {
			return err
		}

		document, err := client.GetDocumentAndTransformResponse()
		if err != nil {
			return err
		}
		buf := createProgram(document)

		file, err := createRepeatPlanningProgramFile()
		if err != nil {
			return err
		}
		_, err = file.WriteString(buf.String())
		return err
	},
}

func createProgram(document technicalnotes.Document) bytes.Buffer {
	var buf bytes.Buffer

	cur := time.Now()
	for _, title := range document.MainTitles {
		formatCur := cur.Format("02-01-2006")
		buf.WriteString(fmt.Sprintf("%s - %s \n", formatCur, title))
		cur = cur.Add(8 * time.Hour)
	}

	return buf
}

func checkRepeatPlanningProgramFileExist() (bool, error) {
	_, err := os.Stat(repeatPlanningProgramFilePath)
	if err != nil {
		if errors.Is(err, os.ErrNotExist) {
			return false, nil
		}
		return false, err
	}

	return true, err
}

func createRepeatPlanningProgramFile() (*os.File, error) {
	filePtr, err := os.Create(repeatPlanningProgramFilePath)
	if err != nil {
		return nil, err
	}
	return filePtr, nil
}

//nolint:gochecknoinits
func init() {
	rootCmd.AddCommand(repeatPlanningProgram)
}
