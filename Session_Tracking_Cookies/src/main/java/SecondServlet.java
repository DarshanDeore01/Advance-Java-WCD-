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
		Cookie ck[]= request.getCookies();
		String uname=ck[0].getValue();
		String sessionId=ck[1].getValue();
		out.print("<br><br> Hi!,"+uname+" Welcome to Second Servlet...");
		out.print("<br><br> SessionId:"+sessionId);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doGet(request, response);
	}
}//end class