<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cửa Hàng Phụ Kiện MacBook</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f4f4;
        }

        header {
            background-color: #333;
            color: white;
            padding: 10px 0;
        }

        .logo {
            font-size: 2rem;
            text-align: center;
            font-weight: bold;
        }

        .nav-link {
            color: white !important;
        }

        .nav-link:hover {
            color: #ff5722 !important;
        }

        .product-card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .product-card:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }

        .cart-btn {
            background-color: #ff5722;
            color: white;
            border: none;
            width: 100%;
        }

        .cart-btn:hover {
            background-color: #e64a19;
        }

        footer {
            background-color: #333;
            color: white;
            padding: 20px 0;
            text-align: center;
        }

        .product-title {
            font-size: 2rem;
            color: #ff5722;
            margin-bottom: 2rem;
            text-align: center;
        }
    </style>
</head>
<body>
<header>
    <div class="container">
        <div class="logo">Cửa Hàng Phụ Kiện MacBook</div>
        <nav>
            <ul class="nav justify-content-center">
                <li class="nav-item"><a href="index.html" class="nav-link">Trang Chủ</a></li>
                <li class="nav-item"><a href="cart.html" class="nav-link">Giỏ Hàng</a></li>
            </ul>
        </nav>
    </div>
</header>

<section class="container py-5">
    <h2 class="product-title">Phụ Kiện MacBook</h2>
    <div class="row g-4">
        <!-- Phụ kiện chuột Bluetooth -->
        <div class="col-md-3">
            <div class="card product-card">
                <img src="https://via.placeholder.com/300x300?text=Chuột+Bluetooth" class="card-img-top" alt="Chuột Bluetooth">
                <div class="card-body text-center">
                    <h5 class="card-title">Chuột Bluetooth</h5>
                    <p class="card-text text-danger fw-bold">$49</p>
                    <button class="btn cart-btn" onclick="addToCart('Chuột Bluetooth', 49)">Thêm vào giỏ hàng</button>
                </div>
            </div>
        </div>

        <!-- Phụ kiện bàn phím MacBook -->
        <div class="col-md-3">
            <div class="card product-card">
                <img src="https://via.placeholder.com/300x300?text=Bàn+Phím+MacBook" class="card-img-top" alt="Bàn Phím MacBook">
                <div class="card-body text-center">
                    <h5 class="card-title">Bàn Phím MacBook</h5>
                    <p class="card-text text-danger fw-bold">$129</p>
                    <button class="btn cart-btn" onclick="addToCart('Bàn Phím MacBook', 129)">Thêm vào giỏ hàng</button>
                </div>
            </div>
        </div>

        <!-- Phụ kiện túi xách MacBook -->
        <div class="col-md-3">
            <div class="card product-card">
                <img src="https://via.placeholder.com/300x300?text=Túi+Xách+MacBook" class="card-img-top" alt="Túi Xách MacBook">
                <div class="card-body text-center">
                    <h5 class="card-title">Túi Xách MacBook</h5>
                    <p class="card-text text-danger fw-bold">$79</p>
                    <button class="btn cart-btn" onclick="addToCart('Túi Xách MacBook', 79)">Thêm vào giỏ hàng</button>
                </div>
            </div>
        </div>

        <!-- Phụ kiện cáp sạc MacBook -->
        <div class="col-md-3">
            <div class="card product-card">
                <img src="https://via.placeholder.com/300x300?text=Cáp+Sạc+MacBook" class="card-img-top" alt="Cáp Sạc MacBook">
                <div class="card-body text-center">
                    <h5 class="card-title">Cáp Sạc MacBook</h5>
                    <p class="card-text text-danger fw-bold">$29</p>
                    <button class="btn cart-btn" onclick="addToCart('Cáp Sạc MacBook', 29)">Thêm vào giỏ hàng</button>
                </div>
            </div>
        </div>
    </div>
</section>

<footer>
    <p>&copy; 2025 Cửa Hàng Phụ Kiện MacBook. All rights reserved.</p>
</footer>

<script>
    let cart = [];

    // Hàm thêm phụ kiện vào giỏ hàng
    function addToCart(productName, price) {
        cart.push({ product: productName, price: price });
        alert(productName + ' đã được thêm vào giỏ hàng!');
        console.log(cart); // In giỏ hàng ra console cho kiểm tra
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>