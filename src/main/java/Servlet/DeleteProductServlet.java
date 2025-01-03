package Servlet;

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
        // Khởi tạo đối tượng ProductService khi servlet được khởi tạo
        productService = new ProductService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Lấy ID sản phẩm từ tham số URL
            int productId = Integer.parseInt(request.getParameter("id"));

            // Xóa sản phẩm khỏi danh sách hoặc cơ sở dữ liệu
            productService.deleteProduct(productId);

            // Chuyển hướng về trang quản lý sản phẩm sau khi xóa thành công
            response.sendRedirect("manageProducts.jsp");

        } catch (NumberFormatException e) {
            // Nếu không thể chuyển ID thành số
            response.sendRedirect("manageProducts.jsp?error=invalidId");
        } catch (Exception e) {
            // Xử lý lỗi tổng quát
            response.sendRedirect("manageProducts.jsp?error=true");
        }
    }
}