<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>NamHung</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            background-color: #fff8e1;
        }

        header {
            background: linear-gradient(to right, #ff5722, #ffc107);
            color: white;
        }

        .logo {
            font-size: 1.8rem;
            font-weight: bold;
        }

        .nav-link {
            color: white !important;
            position: relative;
        }

        .nav-link:hover {
            color: #ffe082 !important;
        }

        .dropdown-menu {
            background-color: #ff5722;
            border: none;
        }

        .dropdown-item {
            color: white;
        }

        .dropdown-item:hover {
            background-color: #e64a19;
        }

        .card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        footer {
            background: #e64a19;
            color: white;
        }

        footer p {
            margin: 0;
        }

        .btn-dark {
            background-color: #ff5722;
            border: none;
        }

        .btn-dark:hover {
            background-color: #d84315;
        }
    </style>
</head>
<body>
<header class="py-3">
    <div class="container d-flex justify-content-between align-items-center">
        <a href="index.jsp" class="logo text-decoration-none text-white">NamHùng</a>
        <nav>
            <ul class="nav">
                <li class="nav-item"><a href="login.jsp" class="nav-link">Đăng Nhập</a></li>
                <li class="nav-item"><a href="register.jsp" class="nav-link">Đăng Ký</a></li>
                <li class="nav-item"><a href="#" class="nav-link">Giỏ Hàng</a></li>
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Danh Mục</a>
                    <ul class="dropdown-menu">
                        <li><a href="#" class="dropdown-item">Điện Thoại</a></li>
                        <li><a href="#" class="dropdown-item">Laptop</a></li>
                        <li><a href="#" class="dropdown-item">Tai Nghe</a></li>
                        <li><a href="#" class="dropdown-item">Cáp Sạc</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
</header>
<section class="py-5">
    <div class="container">
        <h2 class="text-center text-warning mb-4">Featured Products</h2>
        <div class="row justify-content-center g-4">
            <div class="col-md-3">
                <div class="card border-0 shadow">
                    <img src="https://via.placeholder.com/150" class="card-img-top" alt="Product 1">
                    <div class="card-body text-center">
                        <h5 class="card-title">iPhone 14</h5>
                        <p class="card-text text-danger fw-bold">$799</p>
                        <button class="btn btn-dark w-100">Buy Now</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card border-0 shadow">
                    <img src="https://via.placeholder.com/150" class="card-img-top" alt="Product 2">
                    <div class="card-body text-center">
                        <h5 class="card-title">MacBook Pro</h5>
                        <p class="card-text text-danger fw-bold">$1299</p>
                        <button class="btn btn-dark w-100">Buy Now</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card border-0 shadow">
                    <img src="https://via.placeholder.com/150" class="card-img-top" alt="Product 3">
                    <div class="card-body text-center">
                        <h5 class="card-title">Apple Watch</h5>
                        <p class="card-text text-danger fw-bold">$399</p>
                        <button class="btn btn-dark w-100">Buy Now</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card border-0 shadow">
                    <img src="https://via.placeholder.com/150" class="card-img-top" alt="Product 4">
                    <div class="card-body text-center">
                        <h5 class="card-title">AirPods Pro</h5>
                        <p class="card-text text-danger fw-bold">$249</p>
                        <button class="btn btn-dark w-100">Buy Now</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<footer class="py-3 text-center">
    <p>&copy; 2024 NamHung. All rights reserved.</p>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>