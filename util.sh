### General

is_root() {
    [ $(id -u) -eq 0 ] && return $TRUE || return $FALSE
}

### Docker

docker-machine-start() {
    docker-machine start dev
    eval $(docker-machine env dev)
}

docker-cmd() {
    docker run --rm -v $(pwd):/file -w /file $@
}

### Java

java-cmd() {
    docker-cmd java:8-alpine $@
}

java() {
    java-cmd java $@
}

javac() {
    java-cmd javac $@
}

### PHP

phpunit4() {
    docker-cmd phpunit/phpunit:4.8.5 -v --stop-on-failure --debug
}

composer() {
    docker-cmd composer/composer:1-php5-alpine $@
}