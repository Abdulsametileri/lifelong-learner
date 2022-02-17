// Code generated by MockGen. DO NOT EDIT.
// Source: internal/vocabulary/handler.go

// Package mocks is a generated GoMock package.
package mocks

import (
	context "context"
	reflect "reflect"

	vocabulary "github.com/Abdulsametileri/lifelong-learner/internal/vocabulary"
	gomock "github.com/golang/mock/gomock"
)

// MockService is a mock of Service interface.
type MockService struct {
	ctrl     *gomock.Controller
	recorder *MockServiceMockRecorder
}

// MockServiceMockRecorder is the mock recorder for MockService.
type MockServiceMockRecorder struct {
	mock *MockService
}

// NewMockService creates a new mock instance.
func NewMockService(ctrl *gomock.Controller) *MockService {
	mock := &MockService{ctrl: ctrl}
	mock.recorder = &MockServiceMockRecorder{mock}
	return mock
}

// EXPECT returns an object that allows the caller to indicate expected use.
func (m *MockService) EXPECT() *MockServiceMockRecorder {
	return m.recorder
}

// GetMeaningByWord mocks base method.
func (m *MockService) GetMeaningByWord(ctx context.Context, word string) (*vocabulary.Vocabulary, error) {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "GetMeaningByWord", ctx, word)
	ret0, _ := ret[0].(*vocabulary.Vocabulary)
	ret1, _ := ret[1].(error)
	return ret0, ret1
}

// GetMeaningByWord indicates an expected call of GetMeaningByWord.
func (mr *MockServiceMockRecorder) GetMeaningByWord(ctx, word interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "GetMeaningByWord", reflect.TypeOf((*MockService)(nil).GetMeaningByWord), ctx, word)
}

// SuggestWordsByPrefix mocks base method.
func (m *MockService) SuggestWordsByPrefix(ctx context.Context, prefix string) ([]*vocabulary.Vocabulary, error) {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "SuggestWordsByPrefix", ctx, prefix)
	ret0, _ := ret[0].([]*vocabulary.Vocabulary)
	ret1, _ := ret[1].(error)
	return ret0, ret1
}

// SuggestWordsByPrefix indicates an expected call of SuggestWordsByPrefix.
func (mr *MockServiceMockRecorder) SuggestWordsByPrefix(ctx, prefix interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "SuggestWordsByPrefix", reflect.TypeOf((*MockService)(nil).SuggestWordsByPrefix), ctx, prefix)
}
