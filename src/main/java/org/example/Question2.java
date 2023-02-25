package org.example;

import java.sql.*;

public class Question2 {

    //Find the staff’s name, username and password who is working in the store that sells “Glass Dying” film

    public static void answer() throws SQLException {

        String dbUrl = "jdbc:postgresql://localhost:5432/dvdrental";
        String username = "postgres";
        String password = "password";
        Connection connection = DriverManager.getConnection(dbUrl, username, password);

        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        String query = "SELECT s.first_name, s.last_name, s.username, s.password\n" +
                "FROM staff s\n" +
                "JOIN store st ON s.store_id = st.store_id\n" +
                "JOIN inventory i ON st.store_id = i.store_id\n" +
                "JOIN film f ON i.film_id = f.film_id\n" +
                "WHERE f.title = 'Glass Dying'\n" +
                "GROUP BY s.first_name, s.last_name, s.username, s.password";

        ResultSet resultSet = statement.executeQuery(query);

        while (resultSet.next()){
            System.out.println(resultSet.getString("first_name") + " " + resultSet.getString("last_name")
                    + " " + resultSet.getString("username") + " " + resultSet.getString("password"));
        }
    }
}
