FROM ubuntu:18.10 as builder

ENV GOPATH=/opt/go
RUN apt update
RUN apt install -y build-essential pkg-config git golang-go
RUN apt install -y sudo

RUN go get -u -d gocv.io/x/gocv && \
    cd $GOPATH/src/gocv.io/x/gocv && \
    make install

