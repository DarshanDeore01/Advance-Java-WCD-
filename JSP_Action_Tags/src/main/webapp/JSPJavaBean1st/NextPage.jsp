<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="obj1" class="com.Employee" scope="page"/>
Employee No: <%= obj1.getEno()%> <br>
Employee Name:<%= obj1.getEname()%> <br>
Employee Salary:<%= obj1.getEsal()%> <br>
</body>
</html>