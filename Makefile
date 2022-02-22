lint:
	golangci-lint run -c golangci.yml  --fix -v

unit-test:
	go test -v ./... -coverprofile=unit_coverage.out

unit-coverage-html:
	make unit-test
	go tool cover -html=unit_coverage.out -o unit_coverage.html

build-cli:
	go build -o learn cmd/cli/*

generate-mocks:
	mockgen -source internal/vocabulary/service.go -destination internal/vocabulary/mocks/client.go -package mocks Client
	mockgen -source internal/vocabulary/handler.go -destination internal/vocabulary/mocks/service.go -package mocks Service
	mockgen -source internal/technicalnotes/searcher.go -destination cmd/cli/mock_searcher.go -package main Searcher

# related to technicalnotes
groupby-paragraph-style:
	cat internal/technicalnotes/transform.json | grep namedStyleType | sort -n | uniq -c

# related to technicalnotes
groupby-element:
	cat transform.json | jq '.content[].paragraph.elements' | jq length | sort -n | uniq -c