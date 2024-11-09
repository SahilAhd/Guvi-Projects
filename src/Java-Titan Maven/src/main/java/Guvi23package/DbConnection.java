package Guvi23package;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class DbConnection {
    private static final String URL = "jdbc:mysql://127.0.0.1:3306/?user=root"; 
    private static final String DB_NAME = "guvi"; 
    private static final String USER = "root";
    private static final String PASSWORD = "root"; 

    public static Connection getConnection() throws SQLException {
        Connection conn = null;
        
        try {
            // Register JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to MySQL without specifying a database, to allow database creation if needed
            conn = DriverManager.getConnection(URL, USER, PASSWORD);

            // Create the database if it doesn't exist
            try (Statement stmt = conn.createStatement()) {
                stmt.executeUpdate("CREATE DATABASE IF NOT EXISTS " + DB_NAME);
            }
            
            // Now, connect to the specific project database
            conn = DriverManager.getConnection(URL + DB_NAME, USER, PASSWORD);

            // Create tables if they don't exist
            createTables(conn);
        } catch (ClassNotFoundException e) {
            throw new SQLException("MySQL JDBC Driver not found.", e);
        }
        
        return conn;
    }

    private static void createTables(Connection conn) throws SQLException {
        try (Statement stmt = conn.createStatement()) {
            // SQL statement for creating the users table
            String createUsersTable = "CREATE TABLE IF NOT EXISTS users ("
                    + "id INT AUTO_INCREMENT PRIMARY KEY, "
                    + "username VARCHAR(50) NOT NULL, "
                    + "email VARCHAR(100) UNIQUE NOT NULL, "
                    + "password VARCHAR(255) NOT NULL, "
                    + "address TEXT, "
                    + "nationality VARCHAR(50), "
                    + "age INT, "
                    + "gender VARCHAR(20), "
                    + "created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP"
                    + ")";
            stmt.executeUpdate(createUsersTable);
            
            // Additional tables can be created here if needed
            // Example: Orders table, products table, etc.
        }
    }
}


//from here Login 

@WebServlet("/login")
class LoginServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve username and password from the request
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean loginSuccess = false;

        try (Connection conn = DbConnection.getConnection()) {
            // Check if the user exists with the given username and password
            String query = "SELECT * FROM users WHERE username = ? AND password = ?";
            try (PreparedStatement stmt = conn.prepareStatement(query)) {
                stmt.setString(1, username);
                stmt.setString(2, password);

                try (ResultSet rs = stmt.executeQuery()) {
                    if (rs.next()) {
                        // User found with matching credentials
                        loginSuccess = true;
                        response.getWriter().write("Login successful!");
                    } else {
                        // Invalid credentials
                        response.getWriter().write("Invalid username or password.");
                    }
                }
            }

            // Record the login attempt in the login_attempts table
            String logAttempt = "INSERT INTO login_attempts (username, success) VALUES (?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(logAttempt)) {
                stmt.setString(1, username);
                stmt.setBoolean(2, loginSuccess);
                stmt.executeUpdate();
            }

        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().write("Database error: " + e.getMessage());
        }
    }
}

//
