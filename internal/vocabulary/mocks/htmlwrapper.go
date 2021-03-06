// Code generated by MockGen. DO NOT EDIT.
// Source: internal/vocabulary/handler.go

// Package mocks is a generated GoMock package.
package mocks

import (
	io "io"
	reflect "reflect"

	gomock "github.com/golang/mock/gomock"
)

// MockHTMLWrapper is a mock of HTMLWrapper interface.
type MockHTMLWrapper struct {
	ctrl     *gomock.Controller
	recorder *MockHTMLWrapperMockRecorder
}

// MockHTMLWrapperMockRecorder is the mock recorder for MockHTMLWrapper.
type MockHTMLWrapperMockRecorder struct {
	mock *MockHTMLWrapper
}

// NewMockHTMLWrapper creates a new mock instance.
func NewMockHTMLWrapper(ctrl *gomock.Controller) *MockHTMLWrapper {
	mock := &MockHTMLWrapper{ctrl: ctrl}
	mock.recorder = &MockHTMLWrapperMockRecorder{mock}
	return mock
}

// EXPECT returns an object that allows the caller to indicate expected use.
func (m *MockHTMLWrapper) EXPECT() *MockHTMLWrapperMockRecorder {
	return m.recorder
}

// Execute mocks base method.
func (m *MockHTMLWrapper) Execute(wr io.Writer, data interface{}) error {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "Execute", wr, data)
	ret0, _ := ret[0].(error)
	return ret0
}

// Execute indicates an expected call of Execute.
func (mr *MockHTMLWrapperMockRecorder) Execute(wr, data interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Execute", reflect.TypeOf((*MockHTMLWrapper)(nil).Execute), wr, data)
}
