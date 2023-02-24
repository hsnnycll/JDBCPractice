package org.example;

import java.sql.*;

public class Question {

    public static void answer() throws SQLException {
        //1- Get a connection to DB
        String dburl = "jdbc:postgresql://localhost:5432/dvdrental";
        String username = "postgres";
        String password = "password";
        Connection connection = DriverManager.getConnection(dburl, username, password);

        //2- Create a statement object
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        //3- Execute a query
        String firstQuery = "SELECT title FROM film";
        ResultSet resultSet = statement.executeQuery(firstQuery);
        //4- Process the resultset
        int count = 1;
        while (resultSet.next()){
            System.out.println(count++ + " : " + resultSet.getString("title"));
        }
    }
}
