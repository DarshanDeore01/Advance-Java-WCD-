<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Header File </title>
</head>
<body>
<%

%>

<p align="right">user:&nbsp;<%=session.getAttribute("uname") %></p>
<p align="right">user:&nbsp;<%=session.getAttribute("role") %></p>
<p align="right"><a href="./logout.jsp">Logout</a>&nbsp;&nbsp;&nbsp;</p>
<center>Home | Services |<a href="./product.jsp"> Products</a> | About us | Contact us</center>
</body>
</html>