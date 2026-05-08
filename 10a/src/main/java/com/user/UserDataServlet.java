package com.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/UserDataServlet")
public class UserDataServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("username");
        String email = request.getParameter("email");
        String designation = request.getParameter("designation");

        // SERVER SIDE VALIDATION
        if (name == null || name.trim().isEmpty() ||
            email == null || email.trim().isEmpty() ||
            designation == null || designation.trim().isEmpty()) {

            response.getWriter().println("Error: All fields are required!");
            return;
        }

        if (!email.contains("@") || !email.contains(".")) {
            response.getWriter().println("Error: Invalid Email Format!");
            return;
        }

        // SEND DATA TO JSP
        request.setAttribute("name", name);
        request.setAttribute("email", email);
        request.setAttribute("designation", designation);

        request.getRequestDispatcher("result.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.sendRedirect("index.jsp");
    }
}