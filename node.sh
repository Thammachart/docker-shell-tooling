node() {
    docker-cmd node:6-slim node $@
}

npm() {
    docker-cmd node:6-slim npm $@
}
