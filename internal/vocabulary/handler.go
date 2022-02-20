package vocabulary

import (
	"context"

	"github.com/gofiber/fiber/v2"
)

const (
	SuggestEndPoint = "/vocabulary/suggest/:prefix"
)

type Service interface {
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
	app.Get(SuggestEndPoint, h.Suggest)
}

func (h *Handler) Suggest(c *fiber.Ctx) error {
	prefix := c.Params("prefix")
	vocabularies, err := h.service.SuggestWordsByPrefix(c.Context(), prefix)
	if err != nil {
		return c.SendStatus(fiber.StatusInternalServerError)
	}
	return c.JSON(vocabularies)
}
