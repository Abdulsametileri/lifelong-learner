package vocabulary_test

import (
	"encoding/json"
	"github.com/Abdulsametileri/lifelong-learner/internal/vocabulary/mocks"
	"github.com/golang/mock/gomock"
	"net/http"
	"net/http/httptest"
	"strings"
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

func TestHandler_Suggest(t *testing.T) {
	mockService := mocks.NewMockService(gomock.NewController(t))
	ret := make([]*vocabulary.Vocabulary, 0)
	ret = append(ret, &vocabulary.Vocabulary{
		Word:     "back and forth",
		Meaning:  "ileri geri, aşağı yukarı",
		Sentence: "",
	})
	mockService.
		EXPECT().
		SuggestWordsByPrefix(gomock.Any(), "ba").
		Return(ret, nil).
		Times(1)

	app := test.NewFiberApp()
	handler := vocabulary.NewHandler(mockService)
	handler.RegisterRoutes(app)

	req := httptest.NewRequest(http.MethodGet, strings.Replace(vocabulary.SuggestEndPoint, ":prefix", "ba", 1), http.NoBody)
	res, err := app.Test(req)
	assert.Nil(t, err)
	defer res.Body.Close()

	returnedJSON := make([]*vocabulary.Vocabulary, 0)
	json.NewDecoder(res.Body).Decode(&returnedJSON)
	isEqual := assert.ObjectsAreEqualValues(ret, returnedJSON)
	assert.True(t, isEqual)
}
