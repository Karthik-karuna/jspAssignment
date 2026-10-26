package model;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {
    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("org.postgresql.Driver");
            // Change "college_db", "postgres", and your password as needed
            conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/college_db", "postgres", "1530");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}