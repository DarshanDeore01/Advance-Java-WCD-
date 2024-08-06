<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
int no=1001;
String name="ajit";
double sal=10000;
%>
<jsp:useBean id="obj4" class="com.Employee" scope="application">
<jsp:setProperty name="obj4" property="eno" value="<%=no%>"/>
<jsp:setProperty name="obj4" property="ename" value="<%=name%>"/>
<jsp:setProperty name="obj4" property="esal" value="<%=sal%>"/>

In some case, you may get some value from the database, <br>
that is to be set in the bean object, in such case, <br>
you need to use expression tag. <br>

Employee details using getProperty method <br>
Employee No: <jsp:getProperty name="obj4" property="eno"/><br>
Employee Name: <jsp:getProperty name="obj4" property="ename"/><br>
Employee Salary: <jsp:getProperty name="obj4" property="esal"/><br>
</jsp:useBean>
</body>
</html>