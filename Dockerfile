FROM openjdk:8-jre-alpine

EXPOSE 8080

COPY ./target/student.jar /usr/app
WORKDIR /usr/app

ENTRYPOINT ["java","jar","student.jar"]