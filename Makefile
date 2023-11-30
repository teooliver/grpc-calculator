generate:
	protoc --proto_path=proto proto/*proto --go_out=. --go-grpc_out=.

.PHONY: server
server:
	go run ./server/main.go

grpcui:
	grpcui --plaintext 127.0.0.1:8000

.PHONY: client
client:
	go run ./client/main.go -server="localhost:8000"