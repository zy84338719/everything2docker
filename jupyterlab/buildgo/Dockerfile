FROM golang:alpine as build_base

RUN apk add git gcc musl-dev zeromq-dev \
    && go version \
    && go get -v -ldflags "-s -w" github.com/gopherdata/gophernotes 

FROM zy84338719/jupyterlab
LABEL maintainer="zhangyi@murphyyi.com"

COPY --from=build_base /go/bin/gophernotes /usr/bin
COPY --from=build_base /go/src/github.com/gopherdata/gophernotes/kernel /usr/share/jupyter/kernels/gophernotes