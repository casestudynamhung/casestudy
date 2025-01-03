<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Đăng Nhập Admin</title>
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
      font-size: 1.8rem;
      font-weight: bold;
    }

    footer {
      background: #e64a19; /* Màu nền chân trang giống trang chính */
      color: white;
    }

    footer p {
      margin: 0;
    }

    .login-container {
      max-width: 400px;
      margin: auto;
      padding: 30px;
      background-color: white;
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    .btn-dark {
      background-color: #ff5722;
      border: none;
    }

    .btn-dark:hover {
      background-color: #d84315;
    }
  </style>
</head>
<body>
<header class="py-3">
  <div class="container d-flex justify-content-between align-items-center">
    <div class="logo">Admin Dashboard</div>
  </div>
</header>

<section class="py-5">
  <div class="container">
    <div class="login-container">
      <h3 class="text-center text-warning mb-4">Đăng Nhập Admin</h3>
      <form action="admin-login" method="POST">
        <div class="mb-3">
          <label for="username" class="form-label">Tên Đăng Nhập</label>
          <input type="text" id="username" name="username" class="form-control" required>
        </div>
        <div class="mb-3">
          <label for="password" class="form-label">Mật Khẩu</label>
          <input type="password" id="password" name="password" class="form-control" required>
        </div>
        <div class="mb-3 text-center">
          <button type="submit" class="btn btn-dark w-100">Đăng Nhập</button>
        </div>
      </form>
    </div>
  </div>
</section>

<footer class="py-3 text-center">
  <p>&copy; 2024 NamHung. All rights reserved.</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>