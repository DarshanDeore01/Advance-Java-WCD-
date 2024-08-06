<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Jsp</title>
</head>
<body>
<%! int count=10; %>
<%!
     public String getMsg()
     {
	    return " Hello....! Darshan From Method  :)";
     }
%>
<%
    String uname= request.getParameter("uname");
    out.print("<br>Hello...! "+uname+" From Java Code");
    count++;
    out.print("<br> count:"+count);
%>
    <br><br>Value of Count<%=count %>
    <br>return Value Of getMsg() method<%=getMsg() %>
</body>
</html>