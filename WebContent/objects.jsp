<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Objects</title>
</head>
<body>

	<%
		String userName = request.getParameter("name");
		if (userName != null) {
			//session.setAttribute("sessionName", userName);
			application.setAttribute("applicationName", userName);
			pageContext.setAttribute("pageContextName", userName);
			pageContext.setAttribute("sessionName", userName, PageContext.SESSION_SCOPE);
			
			//pageContext.findAttribute(arg0)
		}
	%>

	<br>
	<br>
	<h3>
		Name in par:
		<%=userName%></h3>
	<br>
	<h4>
		Name is session object:
		<%=session.getAttribute("sessionName")%></h4>
	<h4>
		Name is application object:
		<%=application.getAttribute("applicationName")%></h4>
	<h4>
		Name is pageContextName object:
		<%=pageContext.getAttribute("pageContextName")%></h4>
</body>
</html>