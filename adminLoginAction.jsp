<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
String username1=request.getParameter("username");
String password1=request.getParameter("password");

if (username1.equalsIgnoreCase("admin")&& password1.equalsIgnoreCase("admin")){
	response.sendRedirect("adminHome.jsp");
}
else
	response.sendRedirect("errorAdminLogin.html");	
	

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