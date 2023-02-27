package org.example;

import java.sql.*;

public class QuestionPlus {

    public static void answer() throws SQLException {

        String dburl = "jdbc:postgresql://localhost:5432/exercises";
        String username = "postgres";
        String password = "password";
        Connection connection = DriverManager.getConnection(dburl, username, password);

        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        String firstQuery = "SELECT to_char(joindate, 'Month') AS month, COUNT(*)\n" +
                "FROM cd.members\n" +
                "GROUP BY month\n" +
                "ORDER BY count DESC\n" +
                "LIMIT 1;";

        ResultSet resultSet = statement.executeQuery(firstQuery);

        while (resultSet.next()) {
            System.out.println(resultSet.getString("month"));
        }
    }
}
