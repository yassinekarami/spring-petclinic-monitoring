FROM maven:3.9.11-eclipse-temurin-17 AS builder

WORKDIR /app

COPY pom.xml .
COPY src src

RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-jre

WORKDIR /

COPY --from=builder /app/target/spring-petclinic-4.0.0-SNAPSHOT.jar app.jar

ENTRYPOINT ["java","-jar","/app.jar"]
