<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Hi ! ${param.uname} Welcome to JSP EL
<c:set var="uname" value="${param.uname}"></c:set>
<br>Value of uname variable: <c:out value="${uname}"/>
<a href="./Test2.jsp">click me</a>
</body>
</html>
