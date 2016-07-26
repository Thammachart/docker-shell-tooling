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

php5() {
    docker-cmd php:5-alpine php $@
}

php7() {
    docker-cmd php:7-alpine php $@
}

phpunit4() {
    docker-cmd phpunit/phpunit:4.8.5 --debug --verbose --stop-on-failure 
}

composer() {
    docker-cmd composer/composer:1-php5-alpine $@
}