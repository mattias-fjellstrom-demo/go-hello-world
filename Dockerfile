FROM golang:1.20.13-bullseye AS builder
WORKDIR /app
COPY go.* ./
RUN go mod download
COPY *.go ./
RUN go build -o /hello_go_http
EXPOSE 8080
ENTRYPOINT ["/hello_go_http"]