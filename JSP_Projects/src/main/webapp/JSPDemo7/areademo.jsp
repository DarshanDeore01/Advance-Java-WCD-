<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Area Demo</title>
</head>
<body>
<%
    double r = Double.parseDouble(request.getParameter("radius"));
    int n = Integer.parseInt(request.getParameter("a1"));
    double pi=Double.parseDouble((application.getInitParameter("PI"))); //Context-param
    
    if(n==1)
    {
    	double area = pi*(r*r);
    	out.print("Area Of Circle : "+area);
    }
    if(n==2)
    {
    	double cc = 2*pi*r;
    	out.print("Circumference of circle:"+cc);
    }
    
%>
  
</body>
</html>