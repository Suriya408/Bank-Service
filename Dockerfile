FROM openjdk:17-jdk-slim
RUN mkdir /app
WORKDIR /app
COPY target/bank-service.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
