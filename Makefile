lint:
	golangci-lint run -c golangci.yml  --fix -v

build-cli:
	go build -o learn cmd/cli/*