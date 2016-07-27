java-cmd() {
    docker-cmd java:8-alpine $@
}

java() {
    java-cmd java $@
}

javac() {
    java-cmd javac $@
}