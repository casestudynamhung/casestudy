package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;
import service.ProductService;


import java.io.IOException;

@WebServlet("/addProductServlet")
public class AddProductServlet extends HttpServlet {

    // Khai báo đối tượng ProductService
    private ProductService productService;

    @Override
    public void init() throws ServletException {
        super.init();
        // Khởi tạo đối tượng ProductService khi servlet được khởi tạo
        productService = new ProductService();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Lấy thông tin sản phẩm từ form
            String name = request.getParameter("productName");
            double price = Double.parseDouble(request.getParameter("productPrice"));
            String description = request.getParameter("productDescription");

            // Tạo đối tượng sản phẩm mới
            Product newProduct = new Product(0, name, price, description); // ID tự động tăng

            // Thêm sản phẩm vào dịch vụ
            productService.addProduct(newProduct);

            // Chuyển hướng đến trang quản lý sản phẩm sau khi thêm thành công
            response.sendRedirect("manageProducts.jsp");
        } catch (NumberFormatException e) {
            // Nếu không thể chuyển đổi giá trị price thành số
            response.sendRedirect("addProduct.jsp?error=invalidPrice");
        } catch (Exception e) {
            // Xử lý lỗi tổng quát
            response.sendRedirect("addProduct.jsp?error=true");
        }
    }
}