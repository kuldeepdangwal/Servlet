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
		<form name="personalInfoForm" action="PersonalInfoServlet" method="post">
			<table>
				<tr>
					<td>Enter First Name: </td>
					<td><input type="text" name="firstName"></td>
				</tr>
				<tr>
					<td>Enter Last Name: </td>
					<td><input type="text" name="lastName"></td>
				</tr>
				<input type="submit" value="Submit">
			</table>
		</form>
	</div>
</body>
</html>