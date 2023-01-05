FROM openjdk:8-jre-alpine

EXPOSE 8080

RUN cat /build/libs
COPY ./build/libs/ /usr/app/
WORKDIR /usr/app
RUN cat /usr/app

ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
