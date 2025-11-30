# Sử dụng image JDK 21 làm base image
FROM openjdk:21-jdk-slim

# Cài đặt môi trường làm việc trong container
WORKDIR /app

# Sao chép file JAR từ target folder vào container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose cổng mà ứng dụng Spring Boot sẽ chạy (8081)
EXPOSE 8081

# Chạy ứng dụng Spring Boot khi container khởi động
ENTRYPOINT ["java", "-jar", "app.jar"]
