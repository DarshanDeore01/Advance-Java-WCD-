<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Validate Page</title>
</head>
<body>
    <% response.setContentType("text/html");
       String uname=request.getParameter("uname");
       String upwd=request.getParameter("upwd");
       RequestDispatcher rd1=request.getRequestDispatcher("./home.jsp");
       RequestDispatcher rd2=request.getRequestDispatcher("./login.html");
       
       if(uname.equals("Darshan") && upwd.equals("Darshan123") || uname.equals("rahul") && upwd.equals("rahul123"))
       {
    	   session.setAttribute("uname",uname);	  
    		  String role=null;
    		  if(uname.equals("Darshan"))
    			  {
    			     role=application.getInitParameter("role1");
    			     session.setAttribute("role",role);
    			  }
    		  if(uname.equals("rahul"))
    		      {
    			     role=application.getInitParameter("role2");
    			     session.setAttribute("role",role);
    		      }
    		       
    		         rd1.forward(request,response);
       }
       else
       {
     	  session.invalidate();
     	  out.print("<br>Invalid username or password");
     	  rd2.include(request,response);
       }
    
    %>
</body>
</html>