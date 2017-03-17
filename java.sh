java-cmd() {
    docker-cmd openjdk:8-jdk-alpine $@
}

java() {
    java-cmd java $@
}

javac() {
    java-cmd javac $@
}