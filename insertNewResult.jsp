<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="studentManagementSystem.ConnectionProvider" %>
<%@page import="java.sql.*" %>
    
<%
String rollNo=request.getParameter("rollNo");
String s1=request.getParameter("s1");
String s2=request.getParameter("s2");
String s3=request.getParameter("s3");
String s4=request.getParameter("s4");
String s5=request.getParameter("s5");
String s6=request.getParameter("s6");
String s7=request.getParameter("s7");



try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("insert into result values('"+rollNo+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')");
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
<title>MyCollegge</title>
</head>
<body>

</body>
</html>