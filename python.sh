python2() {
    docker-cmd -it python:2-alpine $@
}

python3() {
    docker-cmd -it python:3-alpine $@
}