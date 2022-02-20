lint:
	golangci-lint run -c golangci.yml  --fix -v

build-cli:
	go build -o learn cmd/cli/*

generate-mocks:
	mockgen -source internal/vocabulary/service.go -destination internal/vocabulary/mocks/client.go -package mocks Client
	mockgen -source internal/vocabulary/handler.go -destination internal/vocabulary/mocks/service.go -package mocks Service

# related to technicalnotes
groupby-paragraph-style:
	cat internal/technicalnotes/transform.json | grep namedStyleType | sort -n | uniq -c

# related to technicalnotes
groupby-element:
	cat transform.json | jq '.content[].paragraph.elements' | jq length | sort -n | uniq -c