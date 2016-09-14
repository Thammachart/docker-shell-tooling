python2() {
    docker-cmd -it --entrypoint=python python:2-alpine $@
}

python3() {
    docker-cmd -it --entrypoint=python python:3-alpine $@
}
