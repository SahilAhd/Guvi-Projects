package Guvi23package;

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet({"/Login", "/Signup"})
public class Greentech extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getServletPath();
        if ("/Login".equals(path)) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/main/Login.jsp");
            dispatcher.forward(request, response);
        } else if ("/Signup".equals(path)) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/main/Signup.jsp");
            dispatcher.forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("login".equals(action)) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            try (Connection conn = DbConnection.getConnection()) {
                String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
                try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                    stmt.setString(1, username);
                    stmt.setString(2, password); // Hash password in a real-world app
                    ResultSet rs = stmt.executeQuery();
                    if (rs.next()) {
                        request.getSession().setAttribute("user_id", rs.getInt("id"));
                        response.sendRedirect("/dashboard.jsp");
                    } else {
                        response.sendRedirect("/main/Login.jsp?error=Invalid credentials");
                    }
                }
            } catch (SQLException e) {
                e.printStackTrace();
                response.sendRedirect("/main/Login.jsp?error=Database error");
            }
        } else if ("signup".equals(action)) {
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            try (Connection conn = DbConnection.getConnection()) {
                String checkUserSQL = "SELECT * FROM users WHERE email = ? OR username = ?";
                try (PreparedStatement checkStmt = conn.prepareStatement(checkUserSQL)) {
                    checkStmt.setString(1, email);
                    checkStmt.setString(2, username);
                    ResultSet rs = checkStmt.executeQuery();

                    if (rs.next()) {
                        response.sendRedirect("/main/Signup.jsp?error=User already exists");
                    } else {
                        String insertSQL = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
                        try (PreparedStatement insertStmt = conn.prepareStatement(insertSQL)) {
                            insertStmt.setString(1, username);
                            insertStmt.setString(2, email);
                            insertStmt.setString(3, password); // Hash the password before storing
                            insertStmt.executeUpdate();
                            response.sendRedirect("/Login");
                        }
                    }
                }
            } catch (SQLException e) {
                e.printStackTrace();
                response.sendRedirect("/main/Signup.jsp?error=Database error");
            }
        }
    }
}
