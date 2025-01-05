package Servlet.AdminProductServerlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;
import service.ProductService;

import java.io.IOException;

@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {

    private ProductService productService;

    @Override
    public void init() throws ServletException {
        super.init();
        productService = new ProductService();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Lấy dữ liệu từ form
            String name = request.getParameter("productName");
            String priceParam = request.getParameter("productPrice");
            String description = request.getParameter("productDescription");

            // Kiểm tra dữ liệu đầu vào
            if (name == null || name.isEmpty() || description == null || description.isEmpty()) {
                response.sendRedirect("addProductForm.jsp?error=emptyFields");
                return;
            }

            double price;
            try {
                price = Double.parseDouble(priceParam);
                if (price < 0) {
                    response.sendRedirect("addProductForm.jsp?error=invalidPrice");
                    return;
                }
            } catch (NumberFormatException e) {
                response.sendRedirect("addProductForm.jsp?error=invalidPrice");
                return;
            }

            // Tạo đối tượng sản phẩm mới
            Product newProduct = new Product(0, name, price, description);

            // Thêm sản phẩm
            productService.addProduct(newProduct);

            // Chuyển hướng sau khi thêm thành công
            response.sendRedirect("manageProducts.jsp?success=add");

        } catch (Exception e) {
            response.sendRedirect("addProductForm.jsp?error=true");
        }
    }
}