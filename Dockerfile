FROM golang:1.16.3-alpine


ENV GO111MODULE on

WORKDIR /go/src/app

RUN apk update \
  && apk add git \
  && go mod init \
  && go get -u github.com/ramya-rao-a/go-outline \
  golang.org/x/tools/gopls

