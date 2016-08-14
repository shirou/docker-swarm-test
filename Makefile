.PHONY: build build_ci

NAME=docker-swarm-test

build:
	go build -o ${NAME} main.go
build_ci:
	/bin/rm -rf build && mkdir build
	CGO_ENABLED=0 go build -o build/${NAME} main.go
	chmod ugo+x build/${NAME}
	cd build && tar cvfz ${CIRCLE_ARTIFACTS}/${NAME}.tar.gz .
