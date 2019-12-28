FROM openjdk:8-alpine

RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/RestAssuredAPITesting-0.0.1-SNAPSHOT.jar $PROJECT_HOME/RestAssuredAPITesting.jar

WORKDIR $PROJECT_HOME

