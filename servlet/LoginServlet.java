package com.cg.project.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int associateId = Integer.parseInt(request.getParameter("associateId"));
		String password = request.getParameter("password");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<div>");
		if(associateId==101&&password.equals("pass"))
			out.println("<font color='green' size=10 align=center>Welcome To Web Portal: "+associateId+"</font>");
		else
			out.println("<font color='red' size=10 align='center'>AssociateId or password is incorrect</font>");
		out.println("</div>");
		out.println("</body>");
		out.println("</html>");
		
	}
}
