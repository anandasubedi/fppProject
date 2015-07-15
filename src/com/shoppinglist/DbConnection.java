package com.shoppinglist;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DbConnection {

    private static Connection connection = null;
    
    private static final String DB_URL ="jdbc:mysql://localhost:3306/shopping_list";
    private static final String DB_USERNAME ="root";
    private static final String DB_PASSWORD ="yipl123";
    private static final String DB_DRIVER ="com.mysql.jdbc.Driver";
    
    public static Connection getConnection() {
        if (connection != null)
            return connection;
        else {
            try {
            	Class.forName(DB_DRIVER);
                connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return connection;
        }

    }
}