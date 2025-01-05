<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>iPhone 16 Pro Max</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        header {
            background: linear-gradient(to right, #ff5722, #ffc107); /* Gradient màu cam giống trang index */
            color: white;
            position: sticky;
            top: 0;
            z-index: 1000;
        }
        body {
            background-color: #fff8e1; /* Thay màu nền giống trang chính */
        }

        .product-image {
            width: 100%; /* Chiếm toàn bộ chiều rộng của cột */
            height: auto; /* Tự động điều chỉnh chiều cao theo tỉ lệ */
            border: 1px solid #ddd;
            padding: 10px;
        }

        .product-detail {
            padding: 40px;
        }

        .product-title {
            font-size: 2.5rem;
            font-weight: bold;
            color: #ff5722; /* Màu cam đậm giống trang chính */
        }

        .product-price {
            font-size: 1.8rem;
            font-weight: bold;
            color: red;
            margin-top: 20px;
        }

        .product-description {
            font-size: 1rem;
            color: #555;
            margin-top: 20px;
        }

        .btn-custom {
            background-color: #ff5722;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 1.1rem;
            margin-top: 30px;
        }

        .btn-custom:hover {
            background-color: #d84315;
            color: white;
        }

        footer {
            background-color: #ff5722;
            color: white;
            padding: 15px;
        }

        footer p {
            margin: 0;
        }

        /* Success notification */
        .notification {
            display: none;
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #4CAF50;
            color: white;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            font-size: 1.1rem;
            z-index: 1000;
        }
    </style>
</head>
<body>

<!-- Header -->
<header class="py-3">
    <div class="container d-flex justify-content-between align-items-center">
        <a href="index.jsp" class="logo text-decoration-none text-white">NamHùng</a>
        <nav>
            <ul class="nav">
                <li class="nav-item"><a href="shoppingcart.jsp" class="nav-link text-white">Giỏ Hàng</a></li>
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle text-white" data-bs-toggle="dropdown">Danh Mục</a>
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

<!-- Product Detail Section -->
<section class="product-detail">
    <div class="container">
        <div class="row">
            <!-- Product Image -->
            <div class="col-md-6">
                <img src="Img/Iphone16prm.png" class="product-image" alt="iPhone 16 Pro Max">
            </div>

            <!-- Product Info -->
            <div class="col-md-6">
                <h1 class="product-title">iPhone 16 Pro Max</h1>
                <p class="product-price">$999</p>
                <p class="product-description">
                    iPhone 16 Pro Max với bộ vi xử lý mạnh mẽ, camera 108MP, màn hình 6.7 inch OLED Super Retina XDR, hỗ trợ 5G, pin dài ngày và thiết kế sang trọng. Đặc biệt, với tính năng màn hình luôn sáng (Always On Display) và màn hình ProMotion 120Hz, trải nghiệm mượt mà và sắc nét hơn bao giờ hết.
                </p>
                <button class="btn-custom w-100" onclick="addToCart()">Thêm vào Giỏ Hàng</button>
            </div>
        </div>
    </div>
</section>

<!-- Success Notification -->
<div class="notification" id="successNotification">
    Đã thêm vào giỏ hàng thành công!
</div>

<!-- Footer -->
<footer class="text-center">
    <p>&copy; 2025 NamHung. All rights reserved.</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<script>
    function addToCart() {
        // Show success notification
        var notification = document.getElementById('successNotification');
        notification.style.display = 'block';

        // Hide notification after 3 seconds
        setTimeout(function() {
            notification.style.display = 'none';
        }, 3000);
    }
</script>

</body>
</html>