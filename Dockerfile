# Sử dụng image OpenJDK 21 làm base image
FROM openjdk:21-jdk-slim

# Cài đặt môi trường làm việc trong container
WORKDIR /app

# Sao chép mã nguồn vào container
COPY . /app

# Cài đặt các dependencies (nếu có)
RUN ./mvnw clean install

# Mở cổng ứng dụng nếu cần
EXPOSE 8081

# Lệnh để chạy ứng dụng
CMD ["java", "-jar", "target/your-app.jar"]
