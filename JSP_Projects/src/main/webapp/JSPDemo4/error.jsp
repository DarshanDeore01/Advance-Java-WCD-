<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error Page</title>
</head>
<body>
<% // it will call toString Method 
out.print("Exception:+exception");
//or
out.print("Exception:+exception.getMessage()");
%>
</body>
</html>