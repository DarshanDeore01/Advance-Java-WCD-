<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@172.16.10.2:1521:orcl" user="java"  password="java"/>
 
<%  
int empsalary= 15555;  
int empid=39;
%>
<sql:update dataSource="${db}" var="count">  
   UPDATE emptb SET Esal = ? WHERE EID = ?  
<sql:param value="<%=empsalary%>" />  
<sql:param value="<%=empid%>"/>  
</sql:update>

<sql:query dataSource="${db}" var="rs">  
SELECT * from emptb
</sql:query>  

<table border="2" width="100%">  
<tr>  
<th>Emp ID</th>  
<th>Emp Name</th>  
<th>Emp Salary</th>  
</tr>  
<c:forEach var="table" items="${rs.rows}">  
<tr>  
<td><c:out value="${table.eid}"/></td>  
<td><c:out value="${table.ename}"/></td>  
<td><c:out value="${table.esal}"/></td>  
</tr>  
</c:forEach>  
</table>  


</body>
</html>