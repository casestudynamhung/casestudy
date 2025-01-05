<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Giỏ Hàng</title>
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

    .btn-dark {
      background-color: #ff5722;
      border: none;
    }

    .btn-dark:hover {
      background-color: #d84315;
    }

    .cart-title {
      font-size: 2.5rem;
      font-weight: bold;
      color: #ff5722;
      text-align: center;
      margin: 2rem 0;
    }

    .table th, .table td {
      vertical-align: middle;
    }
  </style>
</head>
<body>
<header class="py-3">
  <div class="container d-flex justify-content-between align-items-center">
    <a href="index.jsp" class="logo text-decoration-none text-white">NamHùng</a>
    <nav>
      <ul class="nav">
        <li class="nav-item"><a href="index.jsp" class="nav-link">Trang Chủ</a></li>
        <li class="nav-item"><a href="cart.jsp" class="nav-link">Giỏ Hàng</a></li>
      </ul>
    </nav>
  </div>
</header>

<section class="py-5">
  <div class="container">
    <!-- Tiêu đề -->
    <h1 class="cart-title">Giỏ Hàng Của Bạn</h1>

    <!-- Bảng hiển thị sản phẩm trong giỏ hàng -->
    <div class="table-responsive">
      <table class="table table-bordered">
        <thead class="table-warning text-center">
        <tr>
          <th>Hình Ảnh</th>
          <th>Tên Sản Phẩm</th>
          <th>Giá</th>
          <th>Số Lượng</th>
          <th>Tổng</th>
          <th>Hành Động</th>
        </tr>
        </thead>
        <tbody>
        <!-- Lặp qua danh sách sản phẩm trong giỏ hàng -->
        <%
          // Dữ liệu giả lập cho giỏ hàng
          String[][] cartItems = {
                  {"https://via.placeholder.com/100", "iPhone 14", "799", "1"},
                  {"https://via.placeholder.com/100", "MacBook Pro", "1299", "1"},
                  {"https://via.placeholder.com/100", "AirPods Pro", "249", "2"}
          };
          double totalPrice = 0;
          for (int i = 0; i < cartItems.length; i++) {
            String image = cartItems[i][0];
            String name = cartItems[i][1];
            double price = Double.parseDouble(cartItems[i][2]);
            int quantity = Integer.parseInt(cartItems[i][3]);
            double total = price * quantity;
            totalPrice += total;
        %>
        <tr>
          <td class="text-center"><img src="<%= image %>" alt="<%= name %>" class="img-fluid"></td>
          <td><%= name %></td>
          <td class="text-center text-danger fw-bold">$<%= price %></td>
          <td class="text-center">
            <input type="number" value="<%= quantity %>" min="1" class="form-control w-50 mx-auto">
          </td>
          <td class="text-center text-success fw-bold">$<%= total %></td>
          <td class="text-center">
            <button class="btn btn-danger btn-sm">Xóa</button>
          </td>
        </tr>
        <% } %>
        </tbody>
      </table>
    </div>

    <!-- Tổng cộng và nút thanh toán -->
    <div class="d-flex justify-content-between align-items-center mt-4">
      <h4 class="text-danger fw-bold">Tổng Cộng: $<%= totalPrice %></h4>
      <div>
        <button class="btn btn-warning">Cập Nhật</button>
        <button class="btn btn-dark">Thanh Toán</button>
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