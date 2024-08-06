<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@AGNI:1521:oracle12c" user="java"  password="java"/>

<sql:update dataSource="${db}" var="count">
INSERT INTO emp VALUES (909,'amit',15000)  
</sql:update> 

<sql:query dataSource="${db}" var="rs">  
SELECT * from emp 
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