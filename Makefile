SHELL=/usr/bin/env bash

all: linux 


linux:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o proxy
.PHONY: server

clean:
	rm -rf cow bin
.PHONY: clean

