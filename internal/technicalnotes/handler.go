package technicalnotes

import (
	"context"
	"net/http"

	"github.com/gofiber/fiber/v2"
)

const (
	SearchEndpoint = "/technicalnotes/:keyword"
)

type Service interface {
	SearchByKeyword(ctx context.Context, keyword string) (SearchResponse, error)
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
	app.Get(SearchEndpoint, h.Search)
}

func (h *Handler) Search(c *fiber.Ctx) error {
	keyword := c.Params("keyword")
	if keyword == "" {
		return c.SendStatus(fiber.StatusBadRequest)
	}

	results, err := h.service.SearchByKeyword(c.Context(), keyword)
	if err != nil {
		return c.SendStatus(http.StatusInternalServerError)
	}

	return c.JSON(results)
}
