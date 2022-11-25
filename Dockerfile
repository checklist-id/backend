# builder
FROM golang:1.19.3-alpine3.15 AS builder

WORKDIR /app
COPY ./ ./
RUN go mod download
RUN go build -o main

# runner
FROM alpine:3.15
WORKDIR /app
COPY --from=builder /app/main ./main
COPY --from=builder /app/public ./public
COPY --from=builder /app/docs/api-spec ./docs/api-spec
EXPOSE 8000

CMD ["./main"]
