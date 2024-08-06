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

<%
    // Retrieve parameters
    String noParam = request.getParameter("no");
    String nameParam = request.getParameter("name");
    String salaryParam = request.getParameter("salary");
    
    // Handle parameters
    try {
        if (noParam != null && !noParam.isEmpty()) {
            obj2.setEno(Integer.parseInt(noParam));
        }
        if (nameParam != null && !nameParam.isEmpty()) {
            obj2.setEname(nameParam);
        }
        if (salaryParam != null && !salaryParam.isEmpty()) {
            obj2.setEsal(Double.parseDouble(salaryParam));
        }
    } catch (NumberFormatException e) {
        // Handle number format exception
        out.println("Error parsing numbers: " + e.getMessage());
        return; // Stop further processing
    }
    
    // Redirect to printData.jsp
    response.sendRedirect("printData.jsp");
%>
</body>
</html>


