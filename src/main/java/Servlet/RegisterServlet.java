package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet("/registerServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String phoneNumber = request.getParameter("phoneNumber");
        String gender = request.getParameter("gender");

        String passwordRegex = "^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$";
        Pattern pattern = Pattern.compile(passwordRegex);
        Matcher matcher = pattern.matcher(password);

        String phoneNumberRegex = "^\\d{10}$";
        Pattern phonePattern = Pattern.compile(phoneNumberRegex);
        Matcher phoneMatcher = phonePattern.matcher(phoneNumber);

        if (password.equals(confirmPassword) && matcher.matches() && phoneMatcher.matches() && !phoneNumber.isEmpty()) {
            System.out.println("Email: " + email);
            System.out.println("Phone Number: " + phoneNumber);
            System.out.println("Gender: " + gender);
            response.sendRedirect("login.jsp");
        } else {
            response.sendRedirect("register.jsp?error=true");
        }
    }
}