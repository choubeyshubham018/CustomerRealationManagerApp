<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Add Customer</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/add_customer_style.css">
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM-Customer Relation Manager</h2>
		</div>
	</div>
	<div id="container">
		<h3 style="text-align: center;color:  #09c332; width: 70%;">Save Customer</h3>
		<form:form method="Post" action="saveCustomer" modelAttribute="customer">
			<form:hidden path="id"/>
			<table>
				<tbody>
					<tr>
						<th><label> First Name</label></th>
						<td><form:input path="firstName" /></td>
					</tr>
					<tr>
						<th><label> Last Name</label></th>
						<td><form:input path="lastName" /></td>
					</tr>
					<tr>
						<th><label> Email</label></th>
						<td><form:input path="email" /></td>
					</tr>
					<tr>
						<td>
						<input type="button" value="Go Back" onclick="window.location.href='${pageContext.request.contextPath}/customer/list';"
						class="save">
					</td>
					    
						<td><input type="submit" value="Submit" class="save">
						</td>
					</tr>
				</tbody>
			</table>
		</form:form>
	</div>

</body>
</html>