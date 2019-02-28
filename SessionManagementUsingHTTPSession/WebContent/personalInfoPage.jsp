<%@ page session="false"%>
<!DOCTYPE html>
<html>
<body>
	<div>
		<form name="personalInfoForm" action="PersonalInfoServlet" method="post">
			<table align="center" border=0px>
				<tr>
					<td>Enter First Name: </td>
					<td><input type="text" name="firstName"></td>
				</tr>
				<tr>
					<td>Enter Last Name: </td>
					<td><input type="text" name="lastName"></td>
				</tr>
				<tr><td colspan="2" align="center"><input type="submit" value="Submit"></td></tr>
			</table>
		</form>
	</div>
</body>
</html>