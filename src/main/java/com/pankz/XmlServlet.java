package com.pankz;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class XmlServlet extends HttpServlet {


protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
{
	response.setContentType("text/html");
	PrintWriter writer=response.getWriter();
	String userName=request.getParameter("userName");
	writer.println("Hello from GET method "+userName);
}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
{
	response.setContentType("text/html");
	PrintWriter writer=response.getWriter();
	String userName=request.getParameter("userName");
	writer.println("Hello from POST method "+userName);
}
}