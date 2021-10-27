# banvattu
# laravel-manage
Ứng dụng quản lý Hợp đồng- Ban Vật tư - Nhựa Tiền Phong - Beta: 

<h1>Các bước khởi chạy</h1>
<h2>Cài đặt composer</h2>
composer install

#
<h2>Cài đặt npm</h2>
npm install

#
<h2>Cấu hình database</h2>
Tạo file .env từ file .env mẫu

cp .env.example .env
Tạo CSDL trong phpmyadmin có tên banvattu, import CSDL bằng file banvattu.sql

Cấu hình biến môi trường trong file .env

DB_DATABASE= banvattu

DB_USERNAME= tên đăng nhập
 
DB_PASSWORD= mật khẩu

<h3>Tạo key cho ứng dụng</h3>

php artisan key:generate

<h3>Chạy migration và seeding</h3>

php artisan migrate --seed

#
Chạy project laravel trên địa chỉ http://localhost:8000 với câu lệnh

php artisan serve
#
