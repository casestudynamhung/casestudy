package Servlet.AdminLoginServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.*;

@WebServlet("/adminlogin")
public class AdminLogin extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/QuanLyBanHangCongNghe";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "your_password";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            String sql = "SELECT * FROM Admin WHERE Username = ? AND Password = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, password);

            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                // Đăng nhập thành công, chuyển đến dashboard
                response.sendRedirect("admin-dashboard.jsp");
            } else {
                // Đăng nhập thất bại
                request.setAttribute("error", "Tên đăng nhập hoặc mật khẩu sai");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?error=system");
        }
    }
}