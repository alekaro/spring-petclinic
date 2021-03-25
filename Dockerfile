FROM ubuntu:20.04

RUN apt-get update && apt-get upgrade
COPY ./target/*.jar .

FROM openjdk:8
ENTRYPOINT ["java", "-jar", "*.jar"]
