FROM openjdk:8-jre-alpine AS build

WORKDIR /app

FROM openjdk:8-jre-alpine AS base

WORKDIR /app
EXPOSE 8080

FROM base AS final
WORKDIR /app
COPY --from=base . /usr/app/
WORKDIR /usr/app
RUN ls /usr/app

#ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
