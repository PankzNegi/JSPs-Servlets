<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3> Hello JSP</h3>
<!-- Definition tag -->

<%! 
public int add(int a,int b)
{
	return a+b;
}
%>

<%  
int i=1;
int j=2;
int k;
k=i+j;


%>
The value of k is <%=k %>!!

<% k= add(12457,8); %>
<br>
The value of k is <%=k %>
<br>
<% for(i=0;i<=5;i++)
{ %>
	<br> Value of i:<%=i %>
<% }
%>

</body>
</html>

<!-- How JSP Actually works??
This JSP(test.jsp) converted in to java class by Tomcat & Tomcat executes this java class.
The java which get executed & generated by JSP is actually a servlet.
Evey JSP is a different way to write a servlet.
Once we save the JSP and deploy it Tomcat takes JSP and converts it into servlet.
It is actually the servlet which runs
Every code inside a scriptlet is actually converted to code inside doGet method.
It takes all code inside the scriptlet and adds it to doGet.(while creating servlet i.e method 1st)
Static text in between:
It directly goes to output (same as write.println() in servlet 
We can also find the servlet which gets generated by tomcat in folder named as work -->




