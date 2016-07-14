<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Hello from jsp.</h3>

	<%
		for (int i = 0; i < 5; i++) {
			out.println(i);
		}
		int k = 1;
	%>

	The values:
	<%=k%>

	<%! int add(int a1, int a2) {
		return a1 + a2;
	}%>
	
	<br>
	<%
	int r = add(3, 2);
	out.println(r);
	 %>
	
</body>
</html>