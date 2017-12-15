package edu.acc.j2ee.honeypot;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginController extends HttpServlet {
	
	private void processRequest(HttpServletRequest request, HttpServletResponse response)
	throws IOException, ServletException {
		String destination = "login";
		if (request.getMethod().equalsIgnoreCase("GET")) {
			if (request.getSession().getAttribute("user") != null)
				destination = "honeypot";
		}
		else {
			String user = request.getParameter("user");
			String pass = request.getParameter("pass");
			if (user.equals("javauser") && pass.equals("javauser")) {
				request.getSession().setAttribute("user", user);
				destination = "honeypot";
			}
			else {
				request.setAttribute("flash", "Access Denied!");
			}
		}
		request.getRequestDispatcher("/WEB-INF/views/" + destination + ".jsp")
			.forward(request, response);
	}	
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws IOException, ServletException {
		processRequest(request, response);
	}
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws IOException, ServletException {
		processRequest(request, response);
	}
}