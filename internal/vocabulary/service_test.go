package vocabulary_test

import (
	"context"
	"testing"

	"github.com/Abdulsametileri/lifelong-learner/internal/vocabulary"
	"github.com/Abdulsametileri/lifelong-learner/internal/vocabulary/mocks"
	"github.com/golang/mock/gomock"
	"github.com/stretchr/testify/assert"
)

func TestDefaultService_GetMeaningByWord(t *testing.T) {
	t.Run("when word is empty, should return error", func(t *testing.T) {
		svc := vocabulary.NewService(nil)
		voc, err := svc.GetMeaningByWord(context.Background(), "")
		assert.Nil(t, voc)
		assert.Error(t, err)
		assert.Equal(t, err.Error(), vocabulary.ErrFieldIsEmpty("Word").Error())
	})
	t.Run("when word is non empty, should call the repository", func(t *testing.T) {
		mockRepository := mocks.NewMockClient(gomock.NewController(t))
		mockRepository.
			EXPECT().
			FindMeaningByWord(gomock.Any(), "resign").
			Return(&vocabulary.Vocabulary{}, nil).
			Times(1)

		svc := vocabulary.NewService(mockRepository)
		_, err := svc.GetMeaningByWord(context.Background(), "resign")
		assert.Nil(t, err)
	})
}

func TestDefaultService_SuggestWordsByPrefix(t *testing.T) {
	t.Run("when prefix is empty, should return error", func(t *testing.T) {
		svc := vocabulary.NewService(nil)
		prefix, err := svc.SuggestWordsByPrefix(context.Background(), "")
		assert.Nil(t, prefix)
		assert.Error(t, err)
		assert.Equal(t, err.Error(), vocabulary.ErrFieldIsEmpty("Prefix").Error())
	})
	t.Run("when word is non empty, should call the repository", func(t *testing.T) {
		mockRepository := mocks.NewMockClient(gomock.NewController(t))
		mockRepository.
			EXPECT().
			SuggestWordsByPrefix(gomock.Any(), "be").
			Return([]*vocabulary.Vocabulary{}, nil).
			Times(1)

		svc := vocabulary.NewService(mockRepository)
		_, err := svc.SuggestWordsByPrefix(context.Background(), "be")
		assert.Nil(t, err)
	})
}
