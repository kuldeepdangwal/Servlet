<%@page import="com.cg.project.beans.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
	<div>
		<% 
				UserBean userBean = (UserBean)request.getAttribute("userBean");
				Cookie c1  = new Cookie("firstName",userBean.getFirstName());
				Cookie c2  = new Cookie("lastName",userBean.getLastName());
				response.addCookie(c1);
				response.addCookie(c2);
		%>
	</div>
	<div>
		<font size=10>Welcome ${requestScope.userBean.firstName }</font>
		<form name="socialInfoForm" action="SocialInfoServlet" method="post">
			<table>
				<tr>
					<td>Enter Fruit Name</td>
					<td><input type="text" name="fruitName"/></td>
				</tr>
				<tr>
					<td>Enter Movie Name</td>
					<td><input type="text" name="movieName"/></td>
				</tr>
				<tr>
					<td>Enter Book Name</td>
					<td><input type="text" name="bookName"/></td>
				</tr>
				<tr>
					<td><input type="hidden" name="firstName" value="${requestScope.userBean.firstName }"/></td>
				</tr>
				<tr>
					<td><input type="hidden" name="lastName" value="${requestScope.userBean.lastName }"/></td>
				</tr>
				<tr>
					<td><input type="submit"  value="Submit"/></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>