<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
		<form name ="personalInfoForm" action="PersonalInfoServlet" method="post">
			<table>
			<tr>
				<td>First Name: </td>
				<td>${response.userBean.firstName }</td>
			</tr>
			<tr>
				<td>Last Name: </td>
				<td>${response.userBean.lastName }</td>
			</tr>
			<tr>
				<td>Fruit Name: </td>
				<td>${response.userBean.fruitName }</td>
			</tr>
			<tr>
				<td>Movie Name: </td>
				<td>${response.userBean.movieName }</td>
			</tr>
			<tr>
				<td>Book Name: </td>
				<td>${response.userBean.bookName }</td>
			</tr>
			</table>
		</form>
	</div>
</body>
</html>