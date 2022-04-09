package com.github.vasiljeu95.firstwebappwithauthpaintset.firstwebappwithauthpaintset.repository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

public class FeedbackRepository {
    private static final String URL = "jdbc:mysql://localhost:3306/webShop";
    private static final String USER = "root";
    private static final String PASSWORD = "root1234";

    private static final String FEEDBACK_REG = "INSERT INTO feedback_message (client_name, client_email, client_phone) VALUES (?, ?, ?)";

    private static Connection connection;
    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");

            connection = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("FEEDBACK_REG connection = " + connection);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }


    public static boolean checkFeedbackReg(String name, String email, String phone) {
        boolean result = false;
        try {
            PreparedStatement statement = connection.prepareStatement(FEEDBACK_REG);

            statement.setString(1, name);
            statement.setString(2, email);
            statement.setString(3, phone);

            result = statement.executeUpdate() > 0;

            statement.close();
        } catch (SQLException e) {
            System.out.println("Сломались на создании заявки на обратную связь!");
        }
        return result;
    }
}
