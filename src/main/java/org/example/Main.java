package org.example;
import java.sql.*;

public class Main {
    public static void main(String[] args) {

        try {
            Question5.answer();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}