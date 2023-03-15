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
			//session.setAttribute("sessionUserName",userName);
		//	application.setAttribute("applicationUserName",userName);
			pageContext.setAttribute("pageContextUserName",userName);
			//There are two ways of setting attributes in application scope one is above and another one is via pagecontext object.
			// By using page context object we can set attributes in session scope,application scope 
			pageContext.setAttribute("applicationUserName", userName, PageContext.APPLICATION_SCOPE);
			//if we pass APPLICATION_SCOPE in set attributesit sets "applicationuserName" parameter to value "userName"
			//another way to set attributes in session scope via pageContext. same for request scope.
			pageContext.setAttribute("applicationUserName", userName, PageContext.SESSION_SCOPE);
			
		}
%>



<br>
The username in the request object is:<%=userName %>
<br>
The username in the session object is:<%=session.getAttribute("sessionUserName") %>
<br>
The username in the application object is:<%=application.getAttribute("applicationUserName")%>
<br>
The username in the page context object is:<%=pageContext.getAttribute("pageContextUserName")%>




</body>
</html>
<!-- 
Therefore instead of using different objects to set different scopes,we can use only one object  i.e page context -->
