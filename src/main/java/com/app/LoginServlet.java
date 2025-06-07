package com.app;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/loginservlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userID = request.getParameter("UserID");
        String password = request.getParameter("Password");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/employee1", "root", "root");

            String insertQuery = "INSERT INTO userlogin (UserID, Password) VALUES (?, ?)";
            PreparedStatement ps = conn.prepareStatement(insertQuery);
            ps.setString(1, userID);
            ps.setString(2, password);

            int rowsInserted = ps.executeUpdate();
            if (rowsInserted > 0) {
            	 response.sendRedirect("index.html");
            } else {
            	out.println("<h2>Invalid credentials. Please <a href='login.html'>try again</a>.</h2>");
            }

            ps.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3>Server error occurred. Please try again later.</h3>");
        }
    }
}