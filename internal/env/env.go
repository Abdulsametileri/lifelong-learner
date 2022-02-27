package env

import (
	"log"

	"github.com/joho/godotenv"
)

func Parse(envFilePath string) {
	err := godotenv.Load(envFilePath)
	if err != nil {
		log.Fatalf("Error loading .env file %v", err)
	}
}
