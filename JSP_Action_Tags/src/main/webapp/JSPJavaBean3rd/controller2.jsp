 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="obj3" class="com.Employee" scope="application">
<jsp:setProperty name="obj3" property="*"/>
Employee details using getProperty method <br>
Employee No: <jsp:getProperty name="obj3" property="eno"/><br>
Employee Name: <jsp:getProperty name="obj3" property="ename"/><br>
Employee Salary: <jsp:getProperty name="obj3" property="esal"/><br>
</jsp:useBean>
</body>
</html>