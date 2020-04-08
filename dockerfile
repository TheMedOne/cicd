FROM ubuntu:18.04
MAINTAINER "EL MEHDI AARAB"

RUN apt-get update
RUN  apt-get -y upgrade
RUN apt-get install -y wget 
RUN apt-get install -y curl
RUN apt-get install -y git
ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8
ENV GOVERSION 1.14.1
ENV GOROOT /opt/go
ENV GOPATH /root/.go

RUN cd /opt && wget https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz && \
    tar zxf go${GOVERSION}.linux-amd64.tar.gz && rm go${GOVERSION}.linux-amd64.tar.gz && \
    ln -s /opt/go/bin/go /usr/bin/ && \
    mkdir $GOPATH
RUN go get github.com/gin-gonic/gin && \
	go get github.com/jackc/pgx && \
	go get github.com/tgirgin23/gin-gonic-docker

RUN mkdir -p /go/public

# Getting a simple example
COPY hello.go /go/public/

CMD go run /go/public/hello.go

EXPOSE 8888