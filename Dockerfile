# Sử dụng Eclipse Temurin JDK 20
FROM eclipse-temurin:20-jdk-slim

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Sao chép toàn bộ mã nguồn vào container
COPY . /app

# Biên dịch mã nguồn Java
RUN javac Main.java

# Chạy ứng dụng Java
CMD ["java", "Main"]
