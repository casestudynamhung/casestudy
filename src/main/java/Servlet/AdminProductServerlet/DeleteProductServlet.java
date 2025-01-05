package Servlet.AdminProductServerlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.ProductService;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/DeleteProductServlet")
public class DeleteProductServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/QuanLyBanHangCongNghe";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "your_password";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productIdParam = request.getParameter("id");

        try {
            int productId = Integer.parseInt(productIdParam);

            try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
                String sql = "DELETE FROM Product WHERE ProductID = ?";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setInt(1, productId);

                int rowsAffected = stmt.executeUpdate();
                if (rowsAffected > 0) {
                    response.sendRedirect("manageProducts.jsp?success=delete");
                } else {
                    response.sendRedirect("manageProducts.jsp?error=notFound");
                }
            }
        } catch (Exception e) {
            response.sendRedirect("manageProducts.jsp?error=true");
        }
    }
}