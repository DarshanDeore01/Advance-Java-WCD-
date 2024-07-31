
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class HelloServlet extends HttpServlet {
	
    public HelloServlet() 
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out= response.getWriter();
		String username=request.getParameter("uname");
		out.print("<HTML>");
		out.print("<body bgcolor='cyan'>");
		out.print("<br><br>Hello "+username+",Welcome to Servlet...<br>");
		out.print("</body>");
		out.print("</html>");
	}

}
