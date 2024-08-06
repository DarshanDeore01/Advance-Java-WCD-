<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- Scriplets are use to write Java Code  -->
<% 
    int n1=Integer.parseInt(request.getParameter("t1"));
    int n2=Integer.parseInt(request.getParameter("t2"));
    if(n2==0)
    	 throw new SecurityException("testing.....");
    float ans=(float)n1/n2;
    out.print("<br>Answer is:"+ans);
%>
</body>
</html>