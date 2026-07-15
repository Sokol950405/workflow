FROM dh-mirror.gitverse.ru/library/golang:1.25

WORKDIR /app

COPY . .

ENV GOPROXY=https://golang.org,direct

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /main .
