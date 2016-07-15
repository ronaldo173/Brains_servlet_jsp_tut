<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>init page</title>
</head>
<body>

<%!
public void jspInit(){
	String defName = getServletConfig().getInitParameter("defaultUser");
	ServletContext context = getServletContext();
	
	context.setAttribute("name", defName);
}
%>

	Default user is:
	<%=getServletConfig().getInitParameter("defaultUser")%>
<br><br>
	
	Value in servlet Context: <%=getServletContext().getAttribute("name") %>
</body>
</html>