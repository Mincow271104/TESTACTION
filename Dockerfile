FROM maven:3.9.11-eclipse-temurin-17 AS builder
WORKDIR /app
COPY . .
RUN mvn package -DskipTests
FROM eclipse-temurin:17-jre-jammy
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar
COPY --from=builder /app/docker-compose.yml /app/docker-compose.yml
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]