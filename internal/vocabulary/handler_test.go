package vocabulary_test

import (
	"net/http"
	"net/http/httptest"
	"testing"

	"github.com/Abdulsametileri/lifelong-learner/internal/vocabulary"
	"github.com/Abdulsametileri/lifelong-learner/pkg/test"
	"github.com/stretchr/testify/assert"
)

func TestHandler_Search(t *testing.T) {
	app := test.NewFiberApp()

	handler := vocabulary.NewHandler(nil)
	handler.RegisterRoutes(app)

	req := httptest.NewRequest(http.MethodGet, vocabulary.SearchEndPoint, http.NoBody)
	res, err := app.Test(req)
	assert.Nil(t, err)
	defer res.Body.Close()
}
