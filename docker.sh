docker-machine-start() {
    docker-machine start $1
    eval $(docker-machine env $1)
}

docker-cmd() {
    docker run --rm -v $(pwd):/file -w /file $@
}