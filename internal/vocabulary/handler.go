package vocabulary

import (
	"context"
	"io"
	"net/http"

	"github.com/gofiber/fiber/v2"
)

const (
	SuggestEndPoint     = "/vocabulary/suggest/:prefix"
	SuggestHTMLEndpoint = "/vocabulary/:prefix"
)

const LayoutFilePath = "internal/vocabulary/layout.html"

type Service interface {
	SuggestWordsByPrefix(ctx context.Context, prefix string) ([]Vocabulary, error)
}

type HTMLWrapper interface {
	Execute(wr io.Writer, data interface{}) error
}

type Handler struct {
	service      Service
	htmlExecuter HTMLWrapper
}

func NewHandler(htmlExecuter HTMLWrapper, service Service) *Handler {
	h := &Handler{
		service:      service,
		htmlExecuter: htmlExecuter,
	}
	return h
}

func (h *Handler) RegisterRoutes(app *fiber.App) {
	app.Get(SuggestEndPoint, h.SuggestAsJSON)
	app.Get(SuggestHTMLEndpoint, h.SuggestAsHTML)
}

func (h *Handler) SuggestAsJSON(c *fiber.Ctx) error {
	prefix := c.Params("prefix")
	vocabularies, err := h.service.SuggestWordsByPrefix(c.Context(), prefix)
	if err != nil {
		return c.SendStatus(fiber.StatusInternalServerError)
	}
	return c.JSON(vocabularies)
}

func (h *Handler) SuggestAsHTML(c *fiber.Ctx) error {
	prefix := c.Params("prefix")
	vocabularies, err := h.service.SuggestWordsByPrefix(c.Context(), prefix)
	if err != nil {
		return c.SendStatus(fiber.StatusBadRequest)
	}

	err = h.htmlExecuter.Execute(c.Response().BodyWriter(), fiber.Map{
		"searchTerm":   prefix,
		"vocabularies": vocabularies,
	})

	if err != nil {
		return c.SendStatus(http.StatusInternalServerError)
	}

	c.Response().Header.Set(fiber.HeaderContentType, fiber.MIMETextHTMLCharsetUTF8)
	return nil
}
