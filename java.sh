java-cmd() {
    docker-cmd openjdk:9-jdk-slim $@
}

java() {
    java-cmd java $@
}

javac() {
    java-cmd javac $@
}
