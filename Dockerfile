FROM openjdk:20-slim

WORKDIR /app
COPY . /app

RUN ./mvnw clean install

EXPOSE 8081

CMD ["java", "-jar", "target/your‑app.jar"]