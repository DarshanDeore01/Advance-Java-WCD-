import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class FirstServlet extends HttpServlet 
{
    public FirstServlet() 
    {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out= response.getWriter();
		String uname= request.getParameter("uname");
		Cookie c1= new Cookie("username", uname);
		Cookie c2= new Cookie("SessionId","12345");
		out.print("<br><br> Hi!,"+uname+",Welcome to First Servlet...");
	    out.print("<br><br><a href='./SecondServlet'>Click Me</a>");
	    response.addCookie(c1);
	    response.addCookie(c2);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doGet(request, response);
	}
}//end class
