<%@page import="ua.mycompany.ronaldo173.mvc.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Succes</title>
</head>
<body>

	<h3>Login SUCCESSFUL</h3>

	<br>
	<jsp:useBean id="user" class="ua.mycompany.ronaldo173.mvc.dto.User"
		scope="request">

	</jsp:useBean>

	Hello
	<br> User:
	<%=user.toString()%>
	<br> Name:
	<%=user.getUserName()%>

	<br>Jstl:
	<br>
	<jsp:getProperty property="userName" name="user" />
	<br>
</body>
</html>