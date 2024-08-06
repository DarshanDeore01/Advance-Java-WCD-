<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LogOut Page</title>
</head>
<body>
<%
out.print("Logout Sucessfully...! :)");
session.invalidate();
response.sendRedirect("./login.html");
%>
</body>
</html>