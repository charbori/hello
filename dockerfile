# Dockerfile
FROM golang:latest

WORKDIR /app
COPY ./app .

RUN apk update && \
        apk add git && \
        go get github.com/cespare/reflex

        EXPOSE 9999
        CMD["reflex", "-c", "reflex.conf"]
