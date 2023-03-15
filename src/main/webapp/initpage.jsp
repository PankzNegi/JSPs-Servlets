<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%!
public void jspInit()
{
	String defaultName=getServletConfig().getInitParameter("defaultName");
	ServletContext context = getServletContext();
	context.setAttribute("defaultName",defaultName);
}
%>
<body>
<!-- Here we are going to do is that we will configure init param for this.
If user does not pass any name to request then it will show the default username -->
Default user from the servlet config is:
<%=
getServletConfig().getInitParameter("defaultName")%>
The value in the Servlet Context is:<%=getServletContext().getAttribute("defaultUser") %>




</body>
</html>