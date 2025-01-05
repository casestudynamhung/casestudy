<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>iMac M1(2021) 24inch</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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

        footer {
            background: #e64a19;
            color: white;
        }

        footer p {
            margin: 0;
        }

        .product-detail img {
            width: 100%;
            max-height: 600px;
            object-fit: cover;
        }

        .btn-dark {
            background-color: #ff5722;
            border: none;
        }

        .btn-dark:hover {
            background-color: #d84315;
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

<div class="container py-5 product-detail">
    <h1 class="text-center">iMac M1(2021) 24inch</h1>
    <div class="row">
        <div class="col-md-6">
            <img src="Img/iMac-m1.webp" alt="iMac M1">
        </div>
        <div class="col-md-6">
            <h3 class="text-danger">$1599</h3>
            <p><strong>Mô tả:</strong> iMac M1 24 inch với màn hình Retina 4.5K sắc nét, vi xử lý M1 mạnh mẽ, hoàn hảo cho công việc sáng tạo và giải trí. Với thiết kế thanh thoát và tính năng vượt trội, đây là lựa chọn lý tưởng cho người dùng hiện đại.</p>
            <p><strong>Thông số kỹ thuật:</strong></p>
            <ul>
                <li>Màn hình: 24 inch Retina 4.5K</li>
                <li>Vỏ máy: Aliminium với màu sắc thời trang</li>
                <li>Chip: Apple M1</li>
                <li>RAM: 8GB</li>
                <li>Ổ cứng: 256GB SSD</li>
            </ul>
            <button class="btn btn-dark w-100" onclick="addToCart()">Thêm vào Giỏ Hàng</button>
        </div>
    </div>
</div>

<!-- Success Notification -->
<div class="notification" id="successNotification">
    Đã thêm vào giỏ hàng thành công!
</div>

<footer class="py-3 text-center">
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