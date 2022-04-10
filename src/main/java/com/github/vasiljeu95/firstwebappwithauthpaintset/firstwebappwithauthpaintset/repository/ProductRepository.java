package com.github.vasiljeu95.firstwebappwithauthpaintset.firstwebappwithauthpaintset.repository;

import com.github.vasiljeu95.firstwebappwithauthpaintset.firstwebappwithauthpaintset.models.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductRepository {
    private static final String URL = "jdbc:mysql://localhost:3306/webShop";
    private static final String USER = "root";
    private static final String PASSWORD = "root1234";
//    private static final String GET_PRODUCT = "SELECT * FROM products(title, descriotion, price, image) VALUES (?, ?, ?, ?)";
    private static final String GET_PRODUCT = "SELECT * FROM products";
    private static Connection connection;

//    private static List<Product> products = new ArrayList<>();

    public static boolean resultProductRepository(List products) {
        boolean result = false;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("База данных успешно подключена!");

            Statement statement = connection.createStatement();
            resultSQLRequest(statement, GET_PRODUCT, products);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            System.out.println("База данных подключена не успешно!");
        }

        for (int i = 0; i < products.size(); i++) {
            System.out.println(products.get(i));
        }
        return result;
    }

    private static void resultSQLRequest(Statement statement, String sqlRequestSecond, List list) throws SQLException {
        ResultSet resultSet = statement.executeQuery(sqlRequestSecond);

        while (resultSet.next()) {
            String title = resultSet.getString("title");
            String descriotion = resultSet.getString("descriotion");
            double salary = resultSet.getDouble("price");
            String image = resultSet.getString("image");

            list.add(new Product(title, descriotion, salary, image));
        }

        resultSet.close();
    }

}
