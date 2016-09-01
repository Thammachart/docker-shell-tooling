## For OSX only

go() {
    docker-cmd -e GOOS=darwin -e GOARCH=amd64 golang:1-alpine go $@
}
