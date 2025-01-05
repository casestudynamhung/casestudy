import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TestConnection {
    public static void main(String[] args) {
        String dbUrl = "jdbc:mysql://localhost:3306/QuanLyBanHangCongNghe";
        String dbUser = "root";
        String dbPassword = "Namblue2005@";

        try (Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
            if (conn != null) {
                System.out.println("Kết nối cơ sở dữ liệu thành công!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Kết nối cơ sở dữ liệu thất bại!");
        }
    }
}