package com.cg.project.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cg.project.beans.UserBean;

@WebServlet("/SocialInfoServlet")
public class SocialInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fruitName= request.getParameter("fruitName");
		String movieName=request.getParameter("movieName");
		String bookName=request.getParameter("bookName");
		
		Cookie [] cookies = request.getCookies();
		String firstName="",lastName="";
		
		for(Cookie cookie:cookies) {
			if(cookie.getName().equals("firstName"))
				firstName=cookie.getValue();
			else if(cookie.getName().equals("lastName"))
				lastName=cookie.getValue();		
		}
		
		UserBean userBean = new UserBean(firstName, lastName, fruitName, movieName, bookName);
		request.setAttribute("userBean", userBean);
		request.getRequestDispatcher("dataDisplay.jsp").forward(request, response);
	}
}
