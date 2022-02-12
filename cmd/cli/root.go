package main

import (
	"github.com/spf13/cobra"
	"log"
)

var rootCmd = &cobra.Command{
	Use:   "learn",
	Short: "learn is a Command Line Interface (CLI)",
}

func Execute() {
	if err := rootCmd.Execute(); err != nil {
		log.Fatalf("Failed to execute command. Reason: %v", err)
	}
}
