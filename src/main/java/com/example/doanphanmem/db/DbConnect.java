package com.example.doanphanmem.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnect {

    private static final String DB_NAME = "db_RoadsideAssistance";

    private static final String USERNAME = "sa";
    private static final String PASSWORD = "123456";

    private static Connection connection;

    public static Connection getConn() {
        try {
            DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());

            String dbURL = "jdbc:sqlserver://localhost:1433;DatabaseName=" + DB_NAME + ";encrypt=true;trustServerCertificate=true";

            connection = DriverManager.getConnection(dbURL, USERNAME, PASSWORD);

            return connection;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}