<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cửa Hàng MacBook</title>
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
    <div class="logo">Cửa Hàng MacBook</div>
    <nav>
      <ul class="nav justify-content-center">
        <li class="nav-item"><a href="#" class="nav-link">Trang Chủ</a></li>
        <li class="nav-item"><a href="cart.html" class="nav-link">Giỏ Hàng</a></li>
      </ul>
    </nav>
  </div>
</header>

<section class="container py-5">
  <h2 class="product-title">Sản Phẩm MacBook Mới Nhất</h2>
  <div class="row g-4">
    <!-- Sản phẩm MacBook Air -->
    <div class="col-md-3">
      <div class="card product-card">
        <img src="https://via.placeholder.com/300x300?text=MacBook+Air" class="card-img-top" alt="MacBook Air">
        <div class="card-body text-center">
          <h5 class="card-title">MacBook Air</h5>
          <p class="card-text text-danger fw-bold">$999</p>
          <button class="btn cart-btn" onclick="addToCart('MacBook Air', 999)">Thêm vào giỏ hàng</button>
        </div>
      </div>
    </div>

    <!-- Sản phẩm MacBook Pro 13" -->
    <div class="col-md-3">
      <div class="card product-card">
        <img src="https://via.placeholder.com/300x300?text=MacBook+Pro+13" class="card-img-top" alt="MacBook Pro 13">
        <div class="card-body text-center">
          <h5 class="card-title">MacBook Pro 13"</h5>
          <p class="card-text text-danger fw-bold">$1299</p>
          <button class="btn cart-btn" onclick="addToCart('MacBook Pro 13', 1299)">Thêm vào giỏ hàng</button>
        </div>
      </div>
    </div>

    <!-- Sản phẩm MacBook Pro 14" -->
    <div class="col-md-3">
      <div class="card product-card">
        <img src="https://via.placeholder.com/300x300?text=MacBook+Pro+14" class="card-img-top" alt="MacBook Pro 14">
        <div class="card-body text-center">
          <h5 class="card-title">MacBook Pro 14"</h5>
          <p class="card-text text-danger fw-bold">$1799</p>
          <button class="btn cart-btn" onclick="addToCart('MacBook Pro 14', 1799)">Thêm vào giỏ hàng</button>
        </div>
      </div>
    </div>

    <!-- Sản phẩm MacBook Pro 16" -->
    <div class="col-md-3">
      <div class="card product-card">
        <img src="https://via.placeholder.com/300x300?text=MacBook+Pro+16" class="card-img-top" alt="MacBook Pro 16">
        <div class="card-body text-center">
          <h5 class="card-title">MacBook Pro 16"</h5>
          <p class="card-text text-danger fw-bold">$2399</p>
          <button class="btn cart-btn" onclick="addToCart('MacBook Pro 16', 2399)">Thêm vào giỏ hàng</button>
        </div>
      </div>
    </div>
  </div>
</section>

<footer>
  <p>&copy; 2025 Cửa Hàng MacBook. All rights reserved.</p>
</footer>

<script>
  let cart = [];

  // Hàm thêm sản phẩm vào giỏ hàng
  function addToCart(productName, price) {
    cart.push({ product: productName, price: price });
    alert(productName + ' đã được thêm vào giỏ hàng!');
    console.log(cart); // In giỏ hàng ra console cho kiểm tra
  }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>