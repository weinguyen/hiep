# Sử dụng Eclipse Temurin JDK 20
FROM eclipse-temurin:20-jdk-slim

# Thiết lập thư mục làm việc
WORKDIR /app

# Sao chép mã nguồn của bạn
COPY . /app

# Biên dịch và chạy ứng dụng
RUN javac Main.java
CMD ["java", "Main"]
