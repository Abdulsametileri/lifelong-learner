package application

import (
	"os"
	"os/signal"
	"syscall"

	"github.com/Abdulsametileri/lifelong-learner/internal/env"

	"github.com/Abdulsametileri/lifelong-learner/internal/technicalnotes"
	"github.com/Abdulsametileri/lifelong-learner/pkg/htmlwrapper"

	"github.com/Abdulsametileri/lifelong-learner/internal/config"
	"github.com/Abdulsametileri/lifelong-learner/internal/vocabulary"
	log "github.com/Abdulsametileri/lifelong-learner/pkg/log"
	"github.com/Abdulsametileri/lifelong-learner/pkg/server"
)

type Application struct {
	server server.Server
	logger log.Logger
}

func New(cfg *config.Config, version string) (*Application, error) {
	env.Parse(".env")
	appLogger := createLogger(cfg.LogFormat).With("version", version)

	vClient, err := createVocabularyClient(cfg.Application.IsGoogleSheetClientEnabled)
	if err != nil {
		appLogger.Error(err)
		os.Exit(1)
	}

	htmlWrapper := htmlwrapper.NewGOHTMLWrapper(vocabulary.LayoutFilePath)
	vService := vocabulary.NewService(vClient)
	vHandler := vocabulary.NewHandler(htmlWrapper, vService)

	tnClient, err := technicalnotes.InitBreveClient("", "", false)
	if err != nil {
		appLogger.Error(err)
	}
	tnService := technicalnotes.NewService(tnClient)
	tnHandler := technicalnotes.NewHandler(tnService)

	srv := server.New(cfg.Server, appLogger, []server.RegisterRoutesFunc{
		vHandler.RegisterRoutes,
		tnHandler.RegisterRoutes,
	})

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

func createVocabularyClient(isGoogleSheetClientEnabled bool) (vocabulary.Client, error) {
	if isGoogleSheetClientEnabled {
		googleSheetsAPIClient, err := vocabulary.NewGoogleSheetClient()
		return googleSheetsAPIClient, err
	}

	return vocabulary.NewLocalFileClient("internal/vocabulary/vocabulary.json")
}
