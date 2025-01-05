package Servlet.AdminProductServerlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.ProductService;

import java.io.IOException;

@WebServlet("/DeleteProductServlet")
public class DeleteProductServlet extends HttpServlet {

    private ProductService productService;

    @Override
    public void init() throws ServletException {
        super.init();
        productService = new ProductService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Lấy ID sản phẩm từ tham số URL
            String productIdParam = request.getParameter("id");
            if (productIdParam == null || productIdParam.isEmpty()) {
                response.sendRedirect("manageProducts.jsp?error=missingId");
                return;
            }

            int productId = Integer.parseInt(productIdParam);

            // Xóa sản phẩm
            boolean deleted = productService.deleteProduct(productId);

            // Kiểm tra kết quả xóa
            if (deleted) {
                response.sendRedirect("manageProducts.jsp?success=delete");
            } else {
                response.sendRedirect("manageProducts.jsp?error=notFound");
            }

        } catch (NumberFormatException e) {
            response.sendRedirect("manageProducts.jsp?error=invalidId");
        } catch (Exception e) {
            response.sendRedirect("manageProducts.jsp?error=true");
        }
    }
}