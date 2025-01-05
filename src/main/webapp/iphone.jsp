<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <title>Iphone - NamHung</title>
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
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .logo {
            font-size: 2rem;
            font-weight: bold;
            text-align: center;
            margin: 0 auto;
        }

        .nav-link {
            color: white !important;
        }

        .nav-link:hover {
            color: #ffe082 !important;
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

        .title {
            font-size: 2.5rem;
            font-weight: bold;
            color: #ff5722;
            text-align: center;
            margin: 2rem 0;
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
                <li class="nav-item"><a href="shoppingcart.jsp" class="nav-link">Giỏ Hàng</a></li>
            </ul>
        </nav>
    </div>
</header>

<section class="py-5">
    <div class="container">
        <h1 class="title">Danh Sách iPhone</h1>
        <div class="row justify-content-center g-4">
            <div class="col-md-3">
                <div class="card border-0 shadow">
                    <img src="Img/Iphone16prm.png" class="card-img-top" alt="iPhone 16 Pro Max">
                    <div class="card-body text-center">
                        <h5 class="card-title">iPhone 16 Pro Max</h5>
                        <p class="card-text text-danger fw-bold">$999</p>
                        <button class="btn btn-dark w-100">Mua Ngay</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card border-0 shadow">
                    <img src="Img/Iphone16.png" class="card-img-top" alt="iPhone 16">
                    <div class="card-body text-center">
                        <h5 class="card-title">iPhone 16</h5>
                        <p class="card-text text-danger fw-bold">$799</p>
                        <button class="btn btn-dark w-100">Mua Ngay</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card border-0 shadow">
                    <img src="Img/Iphone13.png" class="card-img-top" alt="iPhone 13">
                    <div class="card-body text-center">
                        <h5 class="card-title">iPhone 13</h5>
                        <p class="card-text text-danger fw-bold">$699</p>
                        <button class="btn btn-dark w-100">Mua Ngay</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card border-0 shadow">
                    <img src="Img/Iphone16pro.png" class="card-img-top" alt="iPhone 16 Pro">
                    <div class="card-body text-center">
                        <h5 class="card-title">iPhone 16 Pro</h5>
                        <p class="card-text text-danger fw-bold">$899</p>
                        <button class="btn btn-dark w-100">Mua Ngay</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<footer class="py-3 text-center">
    <p>&copy; 2025 NamHung. All rights reserved.</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>