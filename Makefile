build:
	go build -o docker-swarm-test main.go
build_ci:
	CGO_ENABLED=0 go build -o ${CIRCLE_ARTIFACTS}/docker-swarm-test main.go
	chmod ugo+x ${CIRCLE_ARTIFACTS}/docker-swarm-test
