import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class SecondServlet extends HttpServlet 
{
    public SecondServlet() 
    {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		  String uname= request.getParameter("uname");
		  PrintWriter out= response.getWriter();
		  out.print("<html>");
		  out.print("<body>");
		  out.print("<br><br>Hi !"+uname+"Welcome to Second Servlet");
		  out.print("</body>");
		  out.print("</html>");
    
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doGet(request, response);
	}
}//end class
