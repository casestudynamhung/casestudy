package service;

import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductService {

    private List<Product> products = new ArrayList<>();

    // Phương thức thêm sản phẩm
    public void addProduct(Product product) {
        products.add(product);
        System.out.println("Sản phẩm đã được thêm: " + product.getName());
    }

    // Phương thức lấy danh sách tất cả sản phẩm
    public List<Product> getAllProducts() {
        return products;
    }

    // Phương thức xóa sản phẩm theo ID
    public void deleteProduct(int productId) {
        // Tìm và xóa sản phẩm theo ID
        products.removeIf(product -> product.getId() == productId);
        System.out.println("Sản phẩm với ID " + productId + " đã được xóa.");
    }
}