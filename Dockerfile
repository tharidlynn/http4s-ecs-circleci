FROM openjdk:8-jre-alpine
RUN mkdir -p /opt/app
WORKDIR /opt/app

COPY target/scala-2.12/quickstart-assembly-0.0.1-SNAPSHOT.jar ./
EXPOSE 8080

ENTRYPOINT ["java"]
CMD ["-jar", "quickstart-assembly-0.0.1-SNAPSHOT.jar"]