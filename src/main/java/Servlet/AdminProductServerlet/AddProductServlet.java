package Servlet.AdminProductServerlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;
import service.ProductService;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/QuanLyBanHangCongNghe";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "your_password";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("productName");
        String priceParam = request.getParameter("productPrice");
        String description = request.getParameter("productDescription");
        String productType = request.getParameter("productType");
        String imageURL = request.getParameter("productImage");
        String stockQuantityParam = request.getParameter("stockQuantity");

        try {
            double price = Double.parseDouble(priceParam);
            int stockQuantity = Integer.parseInt(stockQuantityParam);

            try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
                String sql = "INSERT INTO Product (ProductName, ProductType, Price, StockQuantity, ImageURL, Description) VALUES (?, ?, ?, ?, ?, ?)";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1, name);
                stmt.setString(2, productType);
                stmt.setDouble(3, price);
                stmt.setInt(4, stockQuantity);
                stmt.setString(5, imageURL);
                stmt.setString(6, description);

                stmt.executeUpdate();
                response.sendRedirect("manageProducts.jsp?success=add");
            }
        } catch (Exception e) {
            response.sendRedirect("addProductForm.jsp?error=true");
        }
    }
}