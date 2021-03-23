FROM golang:alpine as build_base

RUN apk add git gcc musl-dev zeromq-dev wget \
    && go version \
    && go get -v -ldflags "-s -w" github.com/gopherdata/gophernotes \
    && go install github.com/gopherdata/gophernotes@v0.7.2 
RUN cd / && wget https://studygolang.com/dl/golang/go1.16.2.linux-amd64.tar.gz 

FROM zy84338719/jupyterlab
LABEL maintainer="zhangyi@murphyyi.com"

COPY --from=build_base /go/bin/gophernotes /usr/bin
COPY --from=build_base /go/pkg/mod/github.com/gopherdata/gophernotes@v0.7.2/kernel/ /usr/share/jupyter/kernels/gophernotes
COPY --from=build_base /go1.16.2.linux-amd64.tar.gz  /home
RUN tar -C /usr/local -xzf /home/go1.16.2.linux-amd64.tar.gz \ 
    && rm -rf /home/go1.16.2.linux-amd64.tar.gz \
    && echo 'export PATH=$PATH:/usr/local/go/bin' >> /etc/profile
