default: build
run:
	./bin/test

build:
	@CGO_ENABLED=0 GOOS=linux go build -o bin/test -ldflags="-s -w" cmd/test/main.go

clean:
	@rm -rf bin

docker-build:
	docker compose build

docker-up:
	docker compose up

docker-down:
	docker compose down