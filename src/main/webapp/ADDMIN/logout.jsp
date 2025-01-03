<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
  session.invalidate(); // Hủy session hiện tại
  response.sendRedirect("login.jsp"); // Chuyển hướng về trang đăng nhập
%>