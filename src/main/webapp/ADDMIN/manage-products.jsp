<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Product" %>
<%@ page import="service.ProductService" %>
<%
  ProductService productService = new ProductService();
  List<Product> products = productService.getAllProducts();
  String successMessage = request.getParameter("success");
  String errorMessage = request.getParameter("error");
%>

<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Quản lý sản phẩm</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
  <style>
    body {
      font-family: 'Roboto', sans-serif;
      background-color: #f8f9fa;
    }
    h1 {
      color: #343a40;
    }
    table {
      background-color: #ffffff;
    }
    .btn-success {
      background-color: #28a745;
    }
    .btn-success:hover {
      background-color: #218838;
    }
    .btn-warning {
      background-color: #ffc107;
      color: #212529;
    }
    .btn-warning:hover {
      background-color: #e0a800;
      color: #212529;
    }
    .btn-danger {
      background-color: #dc3545;
    }
    .btn-danger:hover {
      background-color: #c82333;
    }
  </style>
</head>
<body>
<div class="container py-5">
  <h1 class="text-center mb-4">Quản lý sản phẩm</h1>

  <!-- Hiển thị thông báo thành công -->
  <% if ("add".equals(successMessage)) { %>
  <div class="alert alert-success" role="alert">
    Thêm sản phẩm thành công!
  </div>
  <% } else if ("update".equals(successMessage)) { %>
  <div class="alert alert-success" role="alert">
    Cập nhật sản phẩm thành công!
  </div>
  <% } else if ("delete".equals(successMessage)) { %>
  <div class="alert alert-success" role="alert">
    Xóa sản phẩm thành công!
  </div>
  <% } %>

  <!-- Hiển thị thông báo lỗi -->
  <% if ("missingId".equals(errorMessage)) { %>
  <div class="alert alert-danger" role="alert">
    Lỗi: Thiếu ID sản phẩm!
  </div>
  <% } else if ("notFound".equals(errorMessage)) { %>
  <div class="alert alert-danger" role="alert">
    Lỗi: Sản phẩm không tìm thấy!
  </div>
  <% } else if ("invalidId".equals(errorMessage)) { %>
  <div class="alert alert-danger" role="alert">
    Lỗi: ID không hợp lệ!
  </div>
  <% } else if ("true".equals(errorMessage)) { %>
  <div class="alert alert-danger" role="alert">
    Lỗi: Có lỗi xảy ra, vui lòng thử lại!
  </div>
  <% } %>

  <!-- Nút thêm sản phẩm -->
  <div class="mb-3 text-end">
    <a href="addProductForm.jsp" class="btn btn-success">Thêm sản phẩm</a>
  </div>

  <!-- Bảng hiển thị danh sách sản phẩm -->
  <form action="EditProductServlet" method="post">
    <table class="table table-bordered">
      <thead class="table-dark">
      <tr>
        <th>ID</th>
        <th>Tên sản phẩm</th>
        <th>Giá</th>
        <th>Mô tả</th>
        <th>Hành động</th>
      </tr>
      </thead>
      <tbody>
      <%
        for (Product product : products) {
      %>
      <tr>
        <td><%= product.getId() %></td>
        <td><input type="text" name="productName_<%= product.getId() %>" value="<%= product.getName() %>" class="form-control"></td>
        <td><input type="number" name="productPrice_<%= product.getId() %>" value="<%= product.getPrice() %>" class="form-control"></td>
        <td><input type="text" name="productDescription_<%= product.getId() %>" value="<%= product.getDescription() %>" class="form-control"></td>
        <td>
          <!-- Nút lưu thay đổi -->
          <button type="submit" name="productId" value="<%= product.getId() %>" class="btn btn-warning btn-sm">Lưu thay đổi</button>
          <!-- Nút xóa -->
          <a href="DeleteProductServlet?id=<%= product.getId() %>" class="btn btn-danger btn-sm"
             onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm này?');">Xóa</a>
        </td>
      </tr>
      <% } %>
      </tbody>
    </table>
  </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>