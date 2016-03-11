# https://hub.docker.com/_/golang/
FROM golang:alpine
MAINTAINER https://github.com/carlsaturnino/docker-godev-alpine

RUN apk add --no-cache git make

RUN /bin/true \
    && go get -u github.com/golang/lint/golint \
    && go get -u golang.org/x/tools/cmd/goimports \
    && go get -u golang.org/x/tools/cmd/vet
