<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Đăng Nhập</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #fff8e1;
    }

    header {
      background: linear-gradient(to right, #ff5722, #ffc107);
      color: white;
    }

    .logo {
      font-size: 1.8rem;
      font-weight: bold;
    }

    footer {
      background: #e64a19;
      color: white;
    }

    footer p {
      margin: 0;
    }

    .btn-primary {
      background-color: #ff5722;
      border: none;
    }

    .btn-primary:hover {
      background-color: #d84315;
    }
  </style>
</head>
<body>
<header class="py-3">
  <div class="container d-flex justify-content-between align-items-center">
    <a href="index.jsp" class="logo text-decoration-none text-white">NamHùng</a>
    <nav>
      <ul class="nav">
        <li class="nav-item"><a href="login.jsp" class="nav-link text-white">Đăng Nhập</a></li>
        <li class="nav-item"><a href="register.jsp" class="nav-link text-white">Đăng Ký</a></li>
      </ul>
    </nav>
  </div>
</header>
<div class="container mt-5">
  <h2 class="text-center text-warning">Đăng Nhập</h2>
  <div class="row justify-content-center">
    <div class="col-md-6 col-lg-4">
      <form action="loginServlet" method="post" class="mt-4 p-4 bg-white shadow rounded">
        <div class="mb-3">
          <label for="email" class="form-label">Email:</label>
          <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <div class="mb-3">
          <label for="password" class="form-label">Mật khẩu:</label>
          <input type="password" class="form-control" id="password" name="password" required>
        </div>
        <button type="submit" class="btn btn-primary w-100">Đăng Nhập</button>
      </form>
      <div class="text-center mt-3">
        <a href="register.jsp" class="text-danger">Chưa có tài khoản? Đăng ký ngay</a>
      </div>
    </div>
  </div>
</div>
<footer class="py-3 text-center">
  <p>&copy; 2024 NamHung. All rights reserved.</p>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>