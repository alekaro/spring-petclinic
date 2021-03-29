#FROM ubuntu:20.04
#RUN apt-get update && apt-get upgrade
#COPY ./target/*.jar .

FROM openjdk:8
#COPY --from=0 *.jar .
WORKDIR /
COPY ./target/*.jar .
# Wildcards only work when used with /bin/bash, that's why we need CMD to look like that instead of only using ["java", "-jar" ...]
CMD ["/bin/bash", "-c", "java", "-jar", "*.jar"]
