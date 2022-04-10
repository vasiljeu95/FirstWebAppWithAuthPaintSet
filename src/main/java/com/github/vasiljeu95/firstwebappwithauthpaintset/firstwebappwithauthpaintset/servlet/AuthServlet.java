package com.github.vasiljeu95.firstwebappwithauthpaintset.firstwebappwithauthpaintset.servlet;

import com.github.vasiljeu95.firstwebappwithauthpaintset.firstwebappwithauthpaintset.service.AuthService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "auth", value = "/auth")
public class AuthServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String login = request.getParameter("login");
        String password = request.getParameter("password");

        boolean isAuth = AuthService.checkAuth(login, password);

        if (isAuth) {
            //forward to products page
            response.sendRedirect(getServletContext().getContextPath() + "/items");
//            RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/items.jsp");
//            requestDispatcher.forward(request, response);
        } else {
            // show login page with incorrect login data
            request.setAttribute("login", login);
            request.setAttribute("password", password);
            request.setAttribute("errorMessage", "Incorrect login data");

            getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        }
    }
}
