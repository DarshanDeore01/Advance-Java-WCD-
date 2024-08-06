<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="obj2" class="com.Employee" scope="application"/>
Employee details <br>
Employee No: <%= obj2.getEno()%> <br>
Employee Name:<%= obj2.getEname()%> <br>
Employee Salary:<%= obj2.getEsal()%> <br><br><br>

Employee details using getProperty method <br>
Employee No: <jsp:getProperty name="obj2" property="eno"/><br>
Employee Name: <jsp:getProperty name="obj2" property="ename"/><br>
Employee Salary: <jsp:getProperty name="obj2" property="esal"/><br>
</body>
</html>