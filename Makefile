build:
	CGO_ENABLED=0 go build main.go -o ${CIRCLE_ARTIFACTS}/docker-swarm-test
