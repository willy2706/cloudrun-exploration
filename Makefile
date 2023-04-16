run:
	go run main.go

build:
	@go mod tidy -compat=1.20 && \
	go build -tags dynamic -ldflags "-X main.Namespace=${NAMESPACE} \
		-X main.BuildTime=${BUILD_TIME} \
		-X main.BuildVersion=${BUILD_VERSION} \
		-X main.CommitHash=${COMMIT_HASH}" \
		-race -o ./build/app ./main.go

#	https://github.com/github/hub/issues/1818#issuecomment-416146232ini ga comply sama shipper, tapi karena aku build dari ubuntu, makanya aku set CGO_ENABLED=0
build-alpine:
	@go mod tidy -compat=1.20 && \
	CGO_ENABLED=0 go build -tags dynamic -ldflags "-X main.Namespace=${NAMESPACE} \
	    -X main.BuildTime=${BUILD_TIME} \
	    -X main.BuildVersion=${BUILD_VERSION} \
	    -X main.CommitHash=${COMMIT_HASH}" \
		-o ./build/app ./main.go