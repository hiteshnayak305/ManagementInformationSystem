/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBUtils;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hitesh
 */
public class DBConnection {
 
    private Connection connection;
    private ResultSet resultSet;

    /**
     *
     * @throws SQLException
     */
    public DBConnection() throws SQLException {

        Properties properties = new Properties();
        InputStream inputStream = this.getClass().getResourceAsStream("DBProps.properties");
        try {
            properties.load(inputStream);
        } catch (IOException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }

        String driver = properties.getProperty("driver.name");
        String url = properties.getProperty("server.name");
        String username = properties.getProperty("user.name");
        String password = properties.getProperty("user.password");

        try {
            Class.forName(driver);
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     *
     * @return
     */
    public Connection getConnection() {
        return connection;
    }

    /**
     *
     * @return
     */
    public ResultSet getResultSet() {
        return resultSet;
    }

    /**
     *
     * @param resultSet
     */
    public void setResultSet(ResultSet resultSet) {
        this.resultSet = resultSet;
    }
}