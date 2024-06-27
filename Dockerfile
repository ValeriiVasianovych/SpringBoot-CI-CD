FROM openjdk:17-jdk-alpine

WORKDIR /app

COPY target/*.jar app.jar

COPY . .

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "app.jar"]