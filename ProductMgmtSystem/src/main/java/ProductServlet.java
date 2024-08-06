import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class ProductServlet extends HttpServlet 
{
    public ProductServlet() 
    {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	  doPost(request, response);	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		  HttpSession session=request.getSession();
		  String uname= (String)session.getAttribute("uname");
	      PrintWriter out= response.getWriter();
	      out.print("<html>");
	      out.print("<body bgcolor='yellow'>");
	      out.print("<p style='text-align:right'>"+uname+"</p>");
	      out.print("<p style='text-align:right'>"+session.getId()+"</p>");
	      out.print("<p style='text-align:right'><a href='./LogoutServlet'>logout</a></p>");
	      out.print("<center><a href=''> Home </a>|<a href='./ProductServlet'> Product</a> |<a href=''> Services </a>|<a href=''> Conatct us </a>| <a href=''>About us </a></center>");
	      out.print("<br><a href=''>Add Product</a>");
	      out.print("<br><a href=''>Edit Product</a>");
	      out.print("<br><a href=''>Show Product</a>");
	      out.print("</body>");
	      out.print("</html>");
	}
}//end class
