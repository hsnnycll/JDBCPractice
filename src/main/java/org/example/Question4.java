package org.example;

import java.sql.*;

public class Question4 {

    //Which countries have made higher payments than 800$?(with their payment amount in desc order)

    public static void answer() throws SQLException {

        String dbUrl = "jdbc:postgresql://localhost:5432/dvdrental";
        String username = "postgres";
        String password = "password";
        Connection connection = DriverManager.getConnection(dbUrl, username, password);

        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        String query = "SELECT co.country, SUM(p.amount) AS total_payment\n" +
                "FROM payment p\n" +
                "JOIN customer c ON p.customer_id = c.customer_id\n" +
                "JOIN address a ON c.address_id = a.address_id\n" +
                "JOIN city ci ON a.city_id = ci.city_id\n" +
                "JOIN country co ON ci.country_id = co.country_id\n" +
                "GROUP BY co.country\n" +
                "HAVING SUM(p.amount) > 800\n" +
                "ORDER BY total_payment DESC;";

        ResultSet resultSet = statement.executeQuery(query);

        while (resultSet.next()){
            System.out.println(resultSet.getString("country") + " " + resultSet.getString("total_payment"));
        }
    }
}
