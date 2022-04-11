package com.github.vasiljeu95.firstwebappwithauthpaintset.firstwebappwithauthpaintset.servlet;

import com.github.vasiljeu95.firstwebappwithauthpaintset.firstwebappwithauthpaintset.service.FeedbackRegisterService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "feedback-register", value = "/feedback-register")
public class FeedbackRegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        //логика записи сообщения обратной связи
        String name, email, phone;
        name = req.getParameter("client-name");
        email = req.getParameter("client-email");
        phone = req.getParameter("client-phone");

        boolean isResult = FeedbackRegisterService.feedbackRegistration(name, email, phone);

        if (isResult) {
            req.setAttribute("successMessage", "You message successes response!");

//            getServletContext().getRequestDispatcher("/items").forward(req, resp);
            resp.sendRedirect(getServletContext().getContextPath() + "/items");
        } else {
            req.setAttribute("errorMessage", "You message NOT successes. Try again!");
            getServletContext().getRequestDispatcher("/feedback").forward(req, resp);
        }

    }
}
