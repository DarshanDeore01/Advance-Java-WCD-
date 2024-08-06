<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Greet Jsp File</title>
</head>
<body>
<br> Hi..! From Jsp :)
<%-- Scriplets Are used to Write Fragment Of Java Code, Validation Code --%>
<%
String uname= request.getParameter("uname");
out.print("<br> Helloooo....! "+uname+" from JSP Java Code :)");
%>
</body>
</html>