package org.example;

import java.sql.*;

public class Question5 {

    //How much will store-2 earn when all the rented films are returned?

    public static void answer() throws SQLException {

        String dbUrl = "jdbc:postgresql://localhost:5432/dvdrental";
        String username = "postgres";
        String password = "password";
        Connection connection = DriverManager.getConnection(dbUrl, username, password);

        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        String query = "SELECT SUM(f.rental_rate) AS total_earnings\n" +
                "FROM rental r\n" +
                "JOIN inventory i ON r.inventory_id = i.inventory_id\n" +
                "JOIN film f ON i.film_id = f.film_id\n" +
                "WHERE r.return_date IS NOT NULL AND i.store_id = 2;";

        ResultSet resultSet = statement.executeQuery(query);

        while (resultSet.next()){
            System.out.println(resultSet.getString("total_earnings"));
        }
    }
}
