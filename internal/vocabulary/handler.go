package vocabulary

import (
	"context"
	"fmt"
	"github.com/gofiber/fiber/v2"
)

const (
	SearchEndPoint  = "/vocabulary/search"
	SuggestEndPoint = "/vocabulary/suggest/:prefix"
)

type Service interface {
	GetMeaningByWord(ctx context.Context, word string) (*Vocabulary, error)
	SuggestWordsByPrefix(ctx context.Context, prefix string) ([]*Vocabulary, error)
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
	app.Get(SuggestEndPoint, h.Suggest)
}

func (h *Handler) Search(c *fiber.Ctx) error {
	fmt.Println("huhu")
	return nil
}

func (h *Handler) Suggest(c *fiber.Ctx) error {
	prefix := c.Params("prefix")
	vocabularies, err := h.service.SuggestWordsByPrefix(c.Context(), prefix)
	if err != nil {
		return c.SendStatus(fiber.StatusInternalServerError)
	}
	return c.JSON(vocabularies)
}
