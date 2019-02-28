package com.cg.project.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cg.project.beans.UserBean;

@WebServlet("/SocialInfoServlet")
public class SocialInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserBean userBean = new UserBean(request.getParameter("firstName"), request.getParameter("lastName"), request.getParameter("fruitName"), request.getParameter("movieName"), request.getParameter("bookName"));
		
		request.setAttribute("userBean", userBean);
		request.getRequestDispatcher("dataDisplay.jsp").forward(request, response);
	}
}
