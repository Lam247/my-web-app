# # Sử dụng môi trường Node.js# Project 1: Dùng Node 18
# FROM node:18-alpine
# WORKDIR /app
# COPY package.json ./
# # Dùng --production để cài nhanh hơn
# RUN yarn install --production || npm install --production
# COPY . .
# # Mặc định server.js thường chạy cổng 3000
# EXPOSE 3000
# CMD ["node", "server.js"]



# Sử dụng Image PHP kèm Apache
FROM php:8.2-apache

# Thư mục gốc của Web Apache là /var/www/html
WORKDIR /var/www/html

# Copy tất cả file từ máy tính vào thư mục web của Container
COPY . /var/www/html/

# Apache chạy cổng 80
EXPOSE 80