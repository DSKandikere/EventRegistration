package com.example;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String event = request.getParameter("event");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eventdb", "root", "root1234");

            PreparedStatement ps = con.prepareStatement("INSERT INTO registrations(name, email, event_name) VALUES (?, ?, ?)");

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, event);

            int status = ps.executeUpdate();
            if (status > 0) {
                request.setAttribute("name", name);
                request.setAttribute("event", event);
                RequestDispatcher rd = request.getRequestDispatcher("YourTicket.jsp");
                rd.forward(request, response);
            } else {
                out.println("<h3>Registration failed.</h3>");
                out.println("<a href='Register.jsp'>Try Again</a>");
            }

            con.close();
        } catch (Exception e) {
            out.println("Database Error: " + e.getMessage());
        }

        out.close();
    }
}

