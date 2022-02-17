lint:
	golangci-lint run -c golangci.yml  --fix -v

build-cli:
	go build -o learn cmd/cli/*

generate-mocks:
	mockgen -source internal/vocabulary/service.go -destination internal/vocabulary/mocks/client.go -package mocks Client
	mockgen -source internal/vocabulary/handler.go -destination internal/vocabulary/mocks/service.go -package mocks Service
