package com.example.authentication;

import com.example.DAO.User;
import com.example.DAO.UserFunction;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "register", value = "/register")
public class Register extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email_address = request.getParameter("email");
        String password = request.getParameter("password");

        User user = new User();
        user.setUsername(username);
        user.setEmailID(email_address);
        user.setPassword(password);

        UserFunction function = new UserFunction();

        if (function.addUser(user)){
            response.sendRedirect("login.jsp?registration=success");
        }
        else{
            response.sendRedirect("register.jsp?error=1");
        }
    }
}
