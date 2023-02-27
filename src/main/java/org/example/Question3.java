package org.example;

import java.sql.*;

public class Question3 {

    //What are the names of top 5 categories, that have more than 150 films in inventory of store-1?

    public static void answer() throws SQLException {

        String dbUrl = "jdbc:postgresql://localhost:5432/dvdrental";
        String username = "postgres";
        String password = "password";
        Connection connection = DriverManager.getConnection(dbUrl, username, password);

        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        String query = "SELECT c.name, COUNT(*) AS film_count\n" +
                "FROM inventory i\n" +
                "JOIN film f ON i.film_id = f.film_id\n" +
                "JOIN film_category fc ON f.film_id = fc.film_id\n" +
                "JOIN category c ON fc.category_id = c.category_id\n" +
                "WHERE i.store_id = 1\n" +
                "GROUP BY c.name\n" +
                "HAVING COUNT(*) > 150\n" +
                "ORDER BY film_count DESC\n" +
                "LIMIT 5;";

        ResultSet resultSet = statement.executeQuery(query);

        while (resultSet.next()){
            System.out.println(resultSet.getString("name") + " " + resultSet.getString("film_count"));
        }
    }
}
