package com.cg.project.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/registration")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String gender = request.getParameter("gender");
		long contactNumber = Long.parseLong(request.getParameter("contactNumber"));
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		long pinCode = Long.parseLong(request.getParameter("pinCode")); 
		String country = request.getParameter("country");
		
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<div>");
		out.println(firstName);
		out.println(lastName);
		out.println(gender);
		out.println(contactNumber);
		out.println(city);
		out.println(state);
		out.println(pinCode);
		out.println(country);
		out.println("</div>");
		out.println("</body>");
		out.println("</html>");
		
	}

}
