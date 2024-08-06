import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html"); // Ensure the content type is set

        String uname = request.getParameter("uname");
        String upwd = request.getParameter("upwd");
        RequestDispatcher rd1 = request.getRequestDispatcher("./HomeServlet");
        RequestDispatcher rd2 = request.getRequestDispatcher("./login.html");
        PrintWriter out = response.getWriter();

        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            // Load the driver class
            Class.forName("oracle.jdbc.driver.OracleDriver");

            // Create the connection object
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "darshan", "darshan123");

            // Prepare the SQL query
            String query = "SELECT uname, upwd FROM user_ID_Password WHERE uname = ? AND upwd = ?";
            ps = con.prepareStatement(query);
            ps.setString(1, uname);
            ps.setString(2, upwd);
            rs = ps.executeQuery();

            // Handle the result
            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("uname", uname);
                rd1.forward(request, response);
            } else {
                out.print("<br>Invalid Login username or password...");
                rd2.include(request, response);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close the database resources
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
