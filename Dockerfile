FROM golang:1.17

WORKDIR /app

COPY go.mod .
COPY math.go .
COPY math_test.go .

RUN go build -o math

CMD [ "./math" ]
