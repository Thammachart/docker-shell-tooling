node() {
    docker-cmd node:8-alpine node $@
}

npm() {
    docker-cmd node:8-alpine npm $@
}
