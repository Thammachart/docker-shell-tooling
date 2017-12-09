java-cmd() {
    docker-cmd openjdk:9-jdk-slim $@
}

java8-cmd() {
    docker-cmd openjdk:8-jdk-slim $@
}

java() {
    java-cmd java $@
}

javac() {
    java-cmd javac $@
}

java8() {
    java8-cmd java $@
}

java8c() {
    java8-cmd javac $@
}
