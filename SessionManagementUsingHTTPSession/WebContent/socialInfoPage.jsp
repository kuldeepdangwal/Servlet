<%@page import="com.cg.project.beans.UserBean"%>
<!DOCTYPE html>
<html>
<body>
	<div>
		<% 
				HttpSession httpSession = request.getSession(false);
				UserBean userBean =null;
				if(httpSession==null)
					response.sendRedirect("personalInfoPage.jsp");
		%>
	</div>
	<div>
		<font size=10 align="center">Welcome ${httpSessionScope.userBean.firstName }</font>
		<form name="socialInfoForm" action="SocialInfoServlet" method="post">
			<table align="center">
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