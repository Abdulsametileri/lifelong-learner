// Code generated by MockGen. DO NOT EDIT.
// Source: internal/technicalnotes/searcher.go

// Package main is a generated GoMock package.
package main

import (
	context "context"
	reflect "reflect"

	technicalnotes "github.com/Abdulsametileri/lifelong-learner/internal/technicalnotes"
	gomock "github.com/golang/mock/gomock"
)

// MockSearcher is a mock of Searcher interface.
type MockSearcher struct {
	ctrl     *gomock.Controller
	recorder *MockSearcherMockRecorder
}

// MockSearcherMockRecorder is the mock recorder for MockSearcher.
type MockSearcherMockRecorder struct {
	mock *MockSearcher
}

// NewMockSearcher creates a new mock instance.
func NewMockSearcher(ctrl *gomock.Controller) *MockSearcher {
	mock := &MockSearcher{ctrl: ctrl}
	mock.recorder = &MockSearcherMockRecorder{mock}
	return mock
}

// EXPECT returns an object that allows the caller to indicate expected use.
func (m *MockSearcher) EXPECT() *MockSearcherMockRecorder {
	return m.recorder
}

// RefleshIndex mocks base method.
func (m *MockSearcher) RefleshIndex() error {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "RefleshIndex")
	ret0, _ := ret[0].(error)
	return ret0
}

// RefleshIndex indicates an expected call of RefleshIndex.
func (mr *MockSearcherMockRecorder) RefleshIndex() *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "RefleshIndex", reflect.TypeOf((*MockSearcher)(nil).RefleshIndex))
}

// Search mocks base method.
func (m *MockSearcher) Search(ctx context.Context, keyword string) (technicalnotes.SearchResponse, error) {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "Search", ctx, keyword)
	ret0, _ := ret[0].(technicalnotes.SearchResponse)
	ret1, _ := ret[1].(error)
	return ret0, ret1
}

// Search indicates an expected call of Search.
func (mr *MockSearcherMockRecorder) Search(ctx, keyword interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Search", reflect.TypeOf((*MockSearcher)(nil).Search), ctx, keyword)
}
