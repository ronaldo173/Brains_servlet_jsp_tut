<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
<script>
	function startTime() {
		var today = new Date();
		var h = today.getHours();
		var m = today.getMinutes();
		var s = today.getSeconds();
		m = checkTime(m);
		s = checkTime(s);
		document.getElementById('txt').innerHTML = h + ":" + m + ":" + s;
		var t = setTimeout(startTime, 500);
	}
	function checkTime(i) {
		if (i < 10) {
			i = "0" + i
		}
		; // add zero in front of numbers < 10
		return i;
	}
</script>

</head>
<body onload="startTime()">

	<form action="login" method="post">
		<br>User ID: <input type="text" name="userId" /> <br>Password:
		<input type="password" name="password" /> <br> <input
			type="submit" />
	</form>

	<br>
	<br>

	<div id="txt"></div>

	<br>
	<c:set var="num" scope="session" value="11" />
	<c:choose>
		<c:when test="${num <=0}">
	first
	</c:when>
		<c:when test="${num <=10}">second</c:when>
		<c:otherwise>ggwp</c:otherwise>

	</c:choose>

	<br>
	<%
		List<Integer> list = new ArrayList<>();
		for (int i = 0; i < 10; i++) {
			list.add(i);
		}
	%>
	<h4>
		forEach:<%=list.size()%></h4>
	<br>
	<c:forEach var="i" begin="1" end="5">
	Item: <c:out value="${i}" />
	</c:forEach>

</body>
</html>