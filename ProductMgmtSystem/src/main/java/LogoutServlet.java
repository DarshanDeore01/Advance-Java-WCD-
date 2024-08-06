import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class LogoutServlet extends HttpServlet 
{
    public LogoutServlet() 
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		  HttpSession session=request.getSession();
		  String uname= (String)session.getAttribute("uname");
	      PrintWriter out= response.getWriter();
	      session.invalidate();
	      out.print("<br>User logout successfully...");
	      RequestDispatcher rd1= request.getRequestDispatcher("./login.html"); 
	      rd1.include(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doGet(request, response);
	}
}//end class
