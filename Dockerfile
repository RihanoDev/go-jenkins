FROM golang:1.23.4

WORKDIR /app

COPY go.mod ./

RUN go mod download

COPY . .

RUN go build -o happy_murdock

CMD ["./happy_murdock"]