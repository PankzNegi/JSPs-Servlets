<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%@  page import= "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
The time is:<%= new Date()
%>
<br>

<%@ include file ="/Hello.jsp" %>

</body>
</html>



<!-- above statements(properties applicable to jsp pages are page directives.Every JSP page can use a page directive -->
