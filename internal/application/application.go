package application

import (
	"github.com/Abdulsametileri/lifelong-learner/internal/config"
	log "github.com/Abdulsametileri/lifelong-learner/pkg/log"
	"github.com/Abdulsametileri/lifelong-learner/pkg/server"
	"os"
	"os/signal"
	"syscall"
)

type Application struct {
	server server.Server
	logger log.Logger
}

func New(cfg *config.Config, version string) (*Application, error) {
	appLogger := createLogger(cfg.LogFormat).With("version", version)
	srv := server.New(cfg.Server, appLogger)

	return &Application{
		server: srv,
		logger: appLogger,
	}, nil
}

func (a *Application) Run() error {
	shutdownChan := make(chan os.Signal, 1)
	signal.Notify(shutdownChan, syscall.SIGINT, syscall.SIGTERM)

	go func() {
		<-shutdownChan
		if err := a.server.Close(); err != nil {
			a.logger.Error("Graceful shutdown failed")
		}
	}()

	if err := a.server.Run(); err != nil {
		return err
	}

	a.logger.Info("App exited")
	return nil
}

func createLogger(logFormat string) log.Logger {
	if logFormat == "development" {
		return log.NewDevelopment()
	}
	return log.New()
}
