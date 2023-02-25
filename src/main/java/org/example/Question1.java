package org.example;

import java.sql.*;

public class Question1 {

    //The last 3 person’s name and rent date, who had rent any film of actor “Ed Chase”

    public static void answer() throws SQLException {

        String dbUrl = "jdbc:postgresql://localhost:5432/dvdrental";
        String username = "postgres";
        String password = "password";
        Connection connection = DriverManager.getConnection(dbUrl, username, password);

        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        String query = "SELECT c.first_name, c.last_name, r.rental_date\n" +
                "FROM customer c\n" +
                "JOIN rental r ON c.customer_id = r.customer_id\n" +
                "JOIN inventory i ON r.inventory_id = i.inventory_id\n" +
                "JOIN film f ON i.film_id = f.film_id\n" +
                "JOIN film_actor fa ON f.film_id = fa.film_id\n" +
                "JOIN actor a ON fa.actor_id = a.actor_id\n" +
                "WHERE a.first_name = 'Ed' AND a.last_name = 'Chase'\n" +
                "ORDER BY r.rental_date DESC\n" +
                "LIMIT 3;";

        ResultSet resultSet = statement.executeQuery(query);

        while (resultSet.next()){
            System.out.println(resultSet.getString("first_name") + " " + resultSet.getString("last_name") + " " + resultSet.getString("rental_date"));
        }

    }
}
