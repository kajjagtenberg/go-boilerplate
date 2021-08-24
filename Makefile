run:
	go run main.go

tidy:
	go mod tidy

dev:
	docker volume create go_data
	docker run --rm -it -v ${PWD}:/home -v go_data:/go -p 8080:8080 golang
