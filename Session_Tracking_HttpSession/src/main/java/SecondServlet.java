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
		  
		  PrintWriter out= response.getWriter();
		  HttpSession session=request.getSession();
		  String uname=(String)session.getAttribute("uname");
		  String sid=(String)session.getId();
		  out.print("<br><br>Hi !"+uname+" Welcome to Second Servlet");
		  out.print("<br><br>Session Id:"+sid);
		  
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doGet(request, response);
	}
}//end class
