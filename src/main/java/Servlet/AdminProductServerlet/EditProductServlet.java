package Servlet.AdminProductServerlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;
import service.ProductService;

import java.io.IOException;

@WebServlet("/EditProductServlet")
public class EditProductServlet extends HttpServlet {

    private ProductService productService;

    @Override
    public void init() throws ServletException {
        super.init();
        productService = new ProductService(); // Khởi tạo service
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int productId = Integer.parseInt(request.getParameter("productId"));
            String name = request.getParameter("productName_" + productId);
            double price = Double.parseDouble(request.getParameter("productPrice_" + productId));
            String description = request.getParameter("productDescription_" + productId);

            // Cập nhật thông tin sản phẩm
            Product updatedProduct = new Product(productId, name, price, description);
            productService.updateProduct(updatedProduct);

            // Đặt thông báo thành công vào request
            request.setAttribute("success", "update");

            // Chuyển tiếp yêu cầu về manageProducts.jsp mà không thay đổi URL
            RequestDispatcher dispatcher = request.getRequestDispatcher("manageProducts.jsp");
            dispatcher.forward(request, response);
        } catch (Exception e) {
            // Xử lý lỗi và chuyển tiếp đến trang quản lý với thông báo lỗi
            request.setAttribute("error", "true");
            RequestDispatcher dispatcher = request.getRequestDispatcher("manageProducts.jsp");
            dispatcher.forward(request, response);
        }
    }
}