<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Giỏ Hàng</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    /* Các kiểu dáng của bạn tại đây */
  </style>
</head>
<body>
<header class="py-3">
  <!-- Nội dung header của bạn ở đây -->
</header>

<section class="py-5">
  <div class="container">
    <h1 class="cart-title">Giỏ Hàng Của Bạn</h1>

    <!-- Bảng giỏ hàng -->
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
        <%
          HttpSession session = request.getSession();
          ArrayList<String> cart = (ArrayList<String>) session.getAttribute("cart");

          double totalPrice = 0;
          if (cart != null && !cart.isEmpty()) {
            for (String item : cart) {
              String[] itemDetails = item.split(",");
              String productName = itemDetails[0];
              double productPrice = Double.parseDouble(itemDetails[1]);
              String productImage = itemDetails[2];

              // Tính tổng giá trị
              totalPrice += productPrice;

              // Hiển thị các sản phẩm trong giỏ hàng
        %>
        <tr>
          <td class="text-center"><img src="<%= productImage %>" alt="<%= productName %>" class="img-fluid"></td>
          <td><%= productName %></td>
          <td class="text-center text-danger fw-bold">$<%= productPrice %></td>
          <td class="text-center">
            <input type="number" value="1" min="1" class="form-control w-50 mx-auto">
          </td>
          <td class="text-center text-success fw-bold">$<%= productPrice %></td>
          <td class="text-center">
            <button class="btn btn-danger btn-sm">Xóa</button>
          </td>
        </tr>
        <% }
        } else {
        %>
        <tr>
          <td colspan="6" class="text-center">Giỏ hàng của bạn trống!</td>
        </tr>
        <% } %>
        </tbody>
      </table>
    </div>

    <!-- Tổng tiền và các nút hành động -->
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