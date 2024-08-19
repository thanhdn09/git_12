# Dockerfile
FROM python:3.11-slim

# Thiết lập biến môi trường để loại bỏ thông báo không cần thiết
ENV PYTHONUNBUFFERED=1

# Cài đặt các công cụ cần thiết và xóa bộ nhớ cache của apt-get
RUN apt-get update && \
    apt-get install -y --no-install-recommends gcc \
    && rm -rf /var/lib/apt/lists/*

# Tạo thư mục ứng dụng và sao chép mã nguồn vào thư mục đó
WORKDIR /t1
COPY p1.py .

# Cài đặt thư viện requests
RUN pip install requests

# Chạy ứng dụng khi container khởi động
CMD ["python", "p1.py"]
