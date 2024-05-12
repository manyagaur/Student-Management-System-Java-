<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="studentManagementSystem.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String course=request.getParameter("course");
String branch=request.getParameter("branch");
String rollNo=request.getParameter("rollNo");
String name=request.getParameter("name");
String fatherName=request.getParameter("fatherName");
String gender=request.getParameter("gender");
System.out.println(name);

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("insert into student values('"+course+"','"+branch+"','"+rollNo+"','"+name+"','"+fatherName+"','"+gender+"')");
	System.out.println("Insert executed");
	response.sendRedirect("adminHome.jsp");
}

catch(Exception e){
	System.out.println(e);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>