package com.pankz;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebInitParam;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet(description="SimpleServlet", urlPatterns= {"/SimpleServletPath"}
, initParams= {@WebInitParam(name="defaultUser", value="Martin")})

public class SessionServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.setContentType("text/html");
		PrintWriter writer =response.getWriter();
		String userName=request.getParameter("name");
		HttpSession session=request.getSession();
		ServletContext context=request.getServletContext();
		if(userName !=" " && userName!=null)
		{
			session.setAttribute("saveduserName",userName);
			context.setAttribute("saveduserName",userName);
		}
		
		writer.println("Request Parameter has username as , " +userName);
		writer.println("Session Parameter has username as , "+(String)session.getAttribute("saveduserName"));
		writer.println("Context Parameter has username as , "+(String)context.getAttribute("saveduserName"));
		writer.println("Init Parameter has default username as"+getServletConfig().getInitParameter("defaultUser"));
	}

}
