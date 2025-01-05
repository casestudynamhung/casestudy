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

        .title {
            font-size: 2.5rem;
            font-weight: bold;
            color: #ff5722;
            text-align: center;
            margin-bottom: 2rem;
        }

        .section-title {
            font-size: 2rem;
            font-weight: bold;
            color: #ff5722;
            text-align: center;
            margin: 3rem 0 1rem;
        }

        .carousel-inner img {
            height: 400px;
            object-fit: cover;
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
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Danh Mục</a>
                    <ul class="dropdown-menu">
                        <li><a href="iphone.jsp" class="dropdown-item">Iphone</a></li>
                        <li><a href="mac.jsp" class="dropdown-item">Mac</a></li>
                        <li><a href="phukien.jsp" class="dropdown-item">Phụ kiện</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
</header>

<div id="saleBanner" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="Img/baner.png" class="d-block w-100" alt="Khuyến Mãi 1">
        </div>
        <div class="carousel-item">
            <img src="Img/banner2.png" class="d-block w-100" alt="Khuyến Mãi 2">
        </div>
        <div class="carousel-item">
            <img src="Img/banner3.png" class="d-block w-100" alt="Khuyến Mãi 3">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#saleBanner" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#saleBanner" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

<section class="py-5">
    <div class="container">
        <h1 class="title">Iphone</h1>
        <div class="row justify-content-center g-4">
            <div class="col-md-3">
                <div class="card border-0 shadow">
                    <img src="Img/Iphone16prm.png" class="card-img-top" alt="iPhone 16 Pro Max">
                    <div class="card-body text-center">
                        <h5 class="card-title">IPhone 16 Pro Max</h5>
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

        <h2 class="section-title">Mac</h2>
        <div class="row justify-content-center g-4">
            <div class="col-md-3">
                <div class="card border-0 shadow">
                    <img src="Img/Macbook-airm1.jpeg" class="card-img-top" alt="MacBook Air M1(2020)">
                    <div class="card-body text-center">
                        <h5 class="card-title">MacBook Air M1(2020)</h5>
                        <p class="card-text text-danger fw-bold">$999</p>
                        <button class="btn btn-dark w-100">Mua Ngay</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card border-0 shadow">
                    <img src="Img/iMac-m1.webp" class="card-img-top" alt="iMac M1">
                    <div class="card-body text-center">
                        <h5 class="card-title">iMac M1(2021) 24inch</h5>
                        <p class="card-text text-danger fw-bold">$1599</p>
                        <button class="btn btn-dark w-100">Mua Ngay</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card border-0 shadow">
                    <img src="Img/MacBook-Pro-14inch-M4.jpeg" class="card-img-top" alt="MacBook Pro 14 inch M4">
                    <div class="card-body text-center">
                        <h5 class="card-title">MacBook Pro 14 inch M4</h5>
                        <p class="card-text text-danger fw-bold">$1499</p>
                        <button class="btn btn-dark w-100">Mua Ngay</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card border-0 shadow">
                    <img src="Img/Mac-mini-M4.jpeg" class="card-img-top" alt="Mac mini M4">
                    <div class="card-body text-center">
                        <h5 class="card-title">Mac mini M4</h5>
                        <p class="card-text text-danger fw-bold">$999</p>
                        <button class="btn btn-dark w-100">Mua Ngay</button>
                    </div>
                </div>
            </div>
        </div>

        <h2 class="section-title">Phụ Kiện</h2>
        <div class="row justify-content-center g-4">
            <div class="col-md-3">
                <div class="card border-0 shadow">
                    <img src="Img/Airpods-Max.jpeg" class="card-img-top" alt="AirPods Pro">
                    <div class="card-body text-center">
                        <h5 class="card-title">AirPods Max</h5>
                        <p class="card-text text-danger fw-bold">$699</p>
                        <button class="btn btn-dark w-100">Mua Ngay</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card border-0 shadow">
                    <img src="Img/cap-usb-c.jpeg" class="card-img-top" alt="Cáp sạc Apple USB-C 1M">
                    <div class="card-body text-center">
                        <h5 class="card-title">Cáp sạc Apple USB-C 1M</h5>
                        <p class="card-text text-danger fw-bold">$99</p>
                        <button class="btn btn-dark w-100">Mua Ngay</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card border-0 shadow">
                    <img src="Img/Pencil-2.png" class="card-img-top" alt="Apple Pencil 2">
                    <div class="card-body text-center">
                        <h5 class="card-title">Apple Pencil 2</h5>
                        <p class="card-text text-danger fw-bold">$199</p>
                        <button class="btn btn-dark w-100">Mua Ngay</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card border-0 shadow">
                    <img src="Img/MagicMouse2.jpeg" class="card-img-top" alt="Magic Mouse 2">
                    <div class="card-body text-center">
                        <h5 class="card-title">Magic Mouse 2</h5>
                        <p class="card-text text-danger fw-bold">$129</p>
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