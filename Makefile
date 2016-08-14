build:
	go build main.go -o docker-swarm-test
build_ci:
	CGO_ENABLED=0 go build main.go -o ${CIRCLE_ARTIFACTS}/docker-swarm-test
