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