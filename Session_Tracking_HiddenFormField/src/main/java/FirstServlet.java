import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class FirstServlet extends HttpServlet 
{
    public FirstServlet() 
    {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	  String uname= request.getParameter("uname");
	  PrintWriter out= response.getWriter();
	  out.print("<html>");
	  out.print("<body>");
	  out.print("<br><br>Hi !"+uname+"Welcome to First Servlet");
	  out.print("<form action='./SecondServlet' method='get'>");
	  out.print("<input type='hidden' name='hfield' value='"+uname+"'>");
	  out.print("<input type='submit' value='Click Me'>");
	  out.print("</form>");
	  out.print("</body>");
	  out.print("</html>");
	  
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doGet(request, response);
	}
}//end class
