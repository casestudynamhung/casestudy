package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/adminlogin")
    public class AdminLogin extends HttpServlet {
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            if ("admin".equals(username) && "admin123".equals(password)) {
                response.sendRedirect("admin-dashboard.jsp");
            } else {
                request.setAttribute("error", "Tên đăng nhập hoặc mật khẩu sai");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        }
    }
