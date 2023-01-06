FROM openjdk:8-jre-alpine AS build

WORKDIR /app


EXPOSE 8080

FROM openjdk:8-jre-alpine AS base

WORKDIR /app

FROM base AS final
WORKDIR /usr/app
COPY ./build/libs/ .
RUN ls
CMD echo "started cmd"
#RUN ls /usr/app/build/libs | grep .jar
#java-app-1.0-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "java-app-1.0-SNAPSHOT.jar"]
