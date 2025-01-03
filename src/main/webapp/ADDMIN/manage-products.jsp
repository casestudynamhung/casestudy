<%@ page import="java.util.List" %>
<%@ page import="model.Product" %>
<%@ page import="service.ProductService" %>
<%
  ProductService productService = new ProductService();
  List<Product> products = productService.getAllProducts();
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
    }
  </style>
</head>
<body>
<div class="container py-5">
  <h1 class="text-center">Quản lý</h1>

  <table class="table table-bordered">
    <thead>
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
      <td><%= product.getName() %></td>
      <td><%= product.getPrice() %></td>
      <td><%= product.getDescription() %></td>
      <td>
        <a href="DeleteProductServlet?id=<%= product.getId() %>" class="btn btn-danger">Xóa</a>
      </td>
    </tr>
    <% } %>
    </tbody>
  </table>
</div>
</body>
</html>