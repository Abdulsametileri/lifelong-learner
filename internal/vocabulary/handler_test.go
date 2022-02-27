package vocabulary_test

import (
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"net/http/httptest"
	"strings"
	"testing"

	"github.com/gofiber/fiber/v2"
	"github.com/pkg/errors"

	"github.com/Abdulsametileri/lifelong-learner/internal/vocabulary/mocks"
	"github.com/golang/mock/gomock"

	"github.com/Abdulsametileri/lifelong-learner/internal/vocabulary"
	"github.com/Abdulsametileri/lifelong-learner/pkg/test"
	"github.com/stretchr/testify/assert"
)

func TestHandler_Suggest(t *testing.T) {
	t.Run("Success", func(t *testing.T) {
		mockService := mockServiceReturnSuccess(t)

		app := test.NewFiberApp()
		handler := vocabulary.NewHandler(nil, mockService)
		handler.RegisterRoutes(app)

		req := httptest.NewRequest(http.MethodGet, strings.Replace(vocabulary.SuggestEndPoint, ":prefix", "ba", 1), http.NoBody)
		res, err := app.Test(req)
		assert.Nil(t, err)
		defer res.Body.Close()

		returnedJSON := make([]vocabulary.Vocabulary, 0)
		_ = json.NewDecoder(res.Body).Decode(&returnedJSON)
		isEqual := assert.ObjectsAreEqualValues(dummyVocabularies(), returnedJSON)
		assert.True(t, isEqual)
	})
	t.Run("Failure", func(t *testing.T) {
		mockService := mockServiceReturnError(t)

		app := test.NewFiberApp()
		handler := vocabulary.NewHandler(nil, mockService)
		handler.RegisterRoutes(app)

		req := httptest.NewRequest(http.MethodGet, strings.Replace(vocabulary.SuggestEndPoint, ":prefix", "ma", 1), http.NoBody)
		res, err := app.Test(req)
		assert.Nil(t, err)
		defer res.Body.Close()

		assert.Equal(t, fiber.StatusInternalServerError, res.StatusCode)
	})
}

func TestHandler_SuggestAsHTML(t *testing.T) {
	t.Run("Success", func(t *testing.T) {
		mockService := mockServiceReturnSuccess(t)
		mockHTMLWrapper := mockHTMLWrapperReturnSuccess(t)

		app := test.NewFiberApp()
		handler := vocabulary.NewHandler(mockHTMLWrapper, mockService)
		handler.RegisterRoutes(app)

		req := httptest.NewRequest(http.MethodGet, strings.Replace(vocabulary.SuggestHTMLEndpoint, ":prefix", "ba", 1), http.NoBody)

		res, err := app.Test(req)
		assert.Nil(t, err)
		defer res.Body.Close()

		assert.Equal(t, fiber.MIMETextHTMLCharsetUTF8, res.Header.Get(fiber.HeaderContentType))
		assert.Equal(t, http.StatusOK, res.StatusCode)
		resBodyBytes, err := io.ReadAll(res.Body)
		assert.Nil(t, err)
		k := string(resBodyBytes)
		fmt.Println(k)
	})
	t.Run("Failure", func(t *testing.T) {
		mockService := mockServiceReturnSuccess(t)
		mockHTMLWrapper := mockHTMLWrapperReturError(t)

		app := test.NewFiberApp()
		handler := vocabulary.NewHandler(mockHTMLWrapper, mockService)
		handler.RegisterRoutes(app)

		req := httptest.NewRequest(http.MethodGet, strings.Replace(vocabulary.SuggestHTMLEndpoint, ":prefix", "ba", 1), http.NoBody)

		res, err := app.Test(req)
		assert.Nil(t, err)
		defer res.Body.Close()
		assert.Equal(t, http.StatusInternalServerError, res.StatusCode)
	})
}

func mockServiceReturnSuccess(t *testing.T) *mocks.MockService {
	mockService := mocks.NewMockService(gomock.NewController(t))
	mockService.
		EXPECT().
		SuggestWordsByPrefix(gomock.Any(), "ba").
		Return(dummyVocabularies(), nil).
		Times(1)
	return mockService
}

func mockHTMLWrapperReturnSuccess(t *testing.T) *mocks.MockHTMLWrapper {
	mockHTMLWrapper := mocks.NewMockHTMLWrapper(gomock.NewController(t))
	mockHTMLWrapper.
		EXPECT().
		Execute(gomock.Any(), fiber.Map{
			"searchTerm":   "ba",
			"vocabularies": dummyVocabularies(),
		}).
		Return(nil).
		Times(1)
	return mockHTMLWrapper
}

func mockServiceReturnError(t *testing.T) *mocks.MockService {
	mockService := mocks.NewMockService(gomock.NewController(t))
	mockService.
		EXPECT().
		SuggestWordsByPrefix(gomock.Any(), "ma").
		Return([]vocabulary.Vocabulary{}, errors.New("problem occurred on suggest service")).
		Times(1)
	return mockService
}

func mockHTMLWrapperReturError(t *testing.T) *mocks.MockHTMLWrapper {
	mockHTMLWrapper := mocks.NewMockHTMLWrapper(gomock.NewController(t))
	mockHTMLWrapper.
		EXPECT().
		Execute(gomock.Any(), fiber.Map{
			"searchTerm":   "ba",
			"vocabularies": dummyVocabularies(),
		}).
		Return(errors.New("error occurred")).
		Times(1)
	return mockHTMLWrapper
}

func dummyVocabularies() []vocabulary.Vocabulary {
	ret := make([]vocabulary.Vocabulary, 0)
	ret = append(ret, vocabulary.Vocabulary{
		Word:     "back and forth",
		Meaning:  "ileri geri, aşağı yukarı",
		Sentence: "",
	})
	return ret
}
