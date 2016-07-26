### General

is_root() {
    [ $(id -u) -eq 0 ] && return $TRUE || return $FALSE
}

### Docker Toolbox

docker-machine-start() {
    docker-machine start $1
    eval $(docker-machine env $1)
}

### Docker Client

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

php5() {
    docker-cmd php:5-alpine php $@
}

php7() {
    docker-cmd php:7-alpine php $@
}

phpunit4() {
    docker-cmd phpunit/phpunit:4.8.5 --debug --verbose --stop-on-failure $@
}

composer() {
    docker-cmd composer/composer:1-php5-alpine $@
}

### Python

python2() {
    docker-cmd -it python:2-alpine $@
}

python3() {
    docker-cmd -it python:3-alpine $@
}

### Golang

go() {
    docker-cmd golang:1-alpine go $@
}