<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>iPhone 16</title>
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
        .product-image {
            width: 100%;
            height: auto;
            border: 1px solid #ddd;
            padding: 10px;
        }
        .product-detail {
            padding: 40px;
        }
        .product-title {
            font-size: 2.5rem;
            font-weight: bold;
            color: #ff5722;
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
                <img src="Img/Iphone16.png" class="product-image" alt="iPhone 16">
            </div>

            <!-- Product Info -->
            <div class="col-md-6">
                <h1 class="product-title">iPhone 16</h1>
                <p class="product-price">$799</p>
                <p class="product-description">
                    iPhone 16 với bộ vi xử lý mạnh mẽ, camera 12MP, màn hình 6.1 inch Super Retina XDR, hỗ trợ 5G, pin dài ngày và thiết kế sang trọng. Trải nghiệm tuyệt vời với các tính năng mới nhất của Apple.
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
    // To store cart items in local storage
    function addToCart() {
        // Product information
        const product = {
            name: "iPhone 16",
            price: 799,
            quantity: 1,
            image: "Img/Iphone16.png"
        };

        // Get current cart items from local storage or initialize as empty
        let cart = JSON.parse(localStorage.getItem('cart')) || [];

        // Add the new product to the cart
        cart.push(product);

        // Save the updated cart back to local storage
        localStorage.setItem('cart', JSON.stringify(cart));

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