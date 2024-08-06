package controller;
import java.io.*;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.http.*;
import bean.LoginBean;
import dao.LoginDao;
public class LoginServlet extends HttpServlet 
{
    public LoginServlet() 
    {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	  try 
	  {
		String uname= request.getParameter("uname");
		String upwd= request.getParameter("upwd");
		PrintWriter out= response.getWriter();
		RequestDispatcher rd1= request.getRequestDispatcher("home.html");
		RequestDispatcher rd2= request.getRequestDispatcher("login.html");
        LoginBean lbobj= new LoginBean();
        lbobj.setUname(uname);
        lbobj.setUpwd(upwd);
        
        LoginDao ldao= new LoginDao();
      
		String  res=ldao.AuthenticateUser(lbobj);
		if(res.equalsIgnoreCase("success"))
		{
			rd1.forward(request, response);
		}
		else
		{
			out.print("<br>"+res);
			rd2.include(request, response);
		}		
	  } 
	  catch (SQLException e) 
	  {
		e.printStackTrace();
	  }
 
	}
}
