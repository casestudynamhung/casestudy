<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="service.ProductService" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container py-5">
    <h1 class="text-center mb-4">Thêm sản phẩm mới</h1>

    <form action="AddProductServlet" method="post">
        <div class="mb-3">
            <label for="productName" class="form-label">Tên sản phẩm</label>
            <input type="text" id="productName" name="productName" class="form-control">
        </div>
        <div class="mb-3">
            <label for="productPrice" class="form-label">Giá sản phẩm</label>
            <input type="number" id="productPrice" name="productPrice" class="form-control">
        </div>
        <div class="mb-3">
            <label for="productDescription" class="form-label">Mô tả sản phẩm</label>
            <input type="text" id="productDescription" name="productDescription" class="form-control">
        </div>

        <div class="mb-3 text-center">
            <button type="submit" class="btn btn-success">Thêm sản phẩm</button>
        </div>
    </form>

    <div class="text-center mt-4">
        <a href="manageProducts.jsp" class="btn btn-secondary">Quay lại</a>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>