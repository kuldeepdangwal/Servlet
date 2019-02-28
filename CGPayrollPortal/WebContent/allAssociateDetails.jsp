<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2 align="center">ALL ASSOCIATE DETAILS</h2>
		<table border="2px" align="center" cellpadding="5" cellspacing="0" >
						<tr><td><b>Associate Id </b>${requestScope.associates.associateId}</td>
						<td><b>First Name </b> ${requestScope.associates.firstName}</td>
						<td><b>Last Name </b>${requestScope.associates.lastName}</td>
						<td><b>Email Id  </b>${requestScope.associates.emailId}</td>
						<td><b>Basic Salary </b> ${requestScope.associates.salary.basicSalary}</td></tr>
						<!-- <tr><td><b>Company PF </b></td><td>${requestScope.associate.salary.companyPf}</td></tr>
						<tr><td><b>Conveyence Allowance </b></td><td>${requestScope.associate.salary.conveyenceAllowance}</td></tr>
						<tr><td><b>EPF  </b></td><td>${requestScope.associate.salary.epf}</td></tr>-->
						<!--<tr><td><b>Net Salary  </b></td><td>${requestScope.associate.salary.netSalary}</td></tr>-->
		</table>
</body>
</html>