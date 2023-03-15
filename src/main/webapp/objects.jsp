<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% //request object 
String userName=request.getParameter("name");
//Session Object & application object
	if(userName !=" " && userName!=null)
		{
			session.setAttribute("sessionUserName",userName);
			application.setAttribute("applicationUserName",userName);
		}


%>
<br>
The username in the request object is:<%=userName %>
<br>
The username in the session object is:<%=session.getAttribute("sessionUserName") %>
<br>
The username in the application object is:<%=application.getAttribute("applicationUserName") %>



</body>
</html>