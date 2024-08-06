<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
<%@ include file="header.jsp" %>
<center>Home Page</center>
<%
  String uname=(String)session.getAttribute("uname");
  out.print("Hi..!"+uname+"Welcome To Home Page");
%>
</body>
</html>