package main

import (
	"github.com/Abdulsametileri/lifelong-learner/internal/application"
	"github.com/Abdulsametileri/lifelong-learner/internal/config"
	"github.com/pkg/errors"
	"log"
	"os"
)

var Version = "1.0.0"

func main() {
	if err := run(); err != nil {
		log.Fatal(err)
	}
}

func run() error {
	cfg, err := config.New("./config", os.Getenv("APP_ENV"))
	if err != nil {
		return errors.Wrap(err, "failed to load app configuration")
	}
	cfg.Print()

	app, err := application.New(cfg, Version)
	if err != nil {
		return errors.Wrap(err, "error when creating application instance")
	}

	return app.Run()
}
