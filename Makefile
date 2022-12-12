SHELL=/usr/bin/env bash

all: linux mac 


linux:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o proxy-linux
.PHONY: linux

clean:
	rm -rf proxy-linux proxy-mac
.PHONY: clean

mac:
	CGO_ENABLED=1 GOOS=darwin GOARCH=amd64 go build -o proxy-mac
.PHONY: mac
