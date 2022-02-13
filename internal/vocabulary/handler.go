package vocabulary

import (
	"context"
	"fmt"

	"github.com/gofiber/fiber/v2"
)

const (
	SearchEndPoint = "/vocabulary/search"
)

type Service interface {
	GetMeaningByWord(ctx context.Context, word string) (*Vocabulary, error)
}

type Handler struct {
	service Service
}

func NewHandler(service Service) *Handler {
	return &Handler{
		service: service,
	}
}

func (h *Handler) RegisterRoutes(app *fiber.App) {
	app.Get(SearchEndPoint, h.Search)
}

func (h *Handler) Search(c *fiber.Ctx) error {
	fmt.Println("huhu")
	return nil
}
