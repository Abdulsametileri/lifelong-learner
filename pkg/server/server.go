package server

import (
	"github.com/Abdulsametileri/lifelong-learner/internal/config"
	"github.com/Abdulsametileri/lifelong-learner/pkg/log"
	"github.com/gofiber/fiber/v2"
)

type Server struct {
	app    *fiber.App
	config config.Server
	logger log.Logger
}

func New(svcCfg config.Server, logger log.Logger) Server {
	app := fiber.New(
		fiber.Config{
			DisableStartupMessage: true,
		},
	)

	server := Server{app: app, config: svcCfg, logger: logger}

	return server
}

func (s Server) Run() error {
	s.logger.Infof("Server is listening %s", s.config.Port)
	return s.app.Listen(s.config.Port)
}

func (s Server) Close() error {
	s.logger.Info("Server is closing")
	return s.app.Shutdown()
}
