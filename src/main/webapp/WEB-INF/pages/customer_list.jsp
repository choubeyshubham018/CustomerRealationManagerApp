<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer List</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
	
	<div id="wrapper">
		<div id="header">
			<h2>CRM-Customer Relation Manager</h2>
		</div>
	</div>
	<div id="container">
		<div id="content">
		<input type="button" value="Add Customer"
		onclick="window.location.href='showForm';return false;"
		class="add-button">
			<table>
				<tr>
					<th>FirstName</th>
					<th>LastName</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
                <c:forEach var="customer" items="${customers}">
                <c:url var="updateLink" value="showUpdateForm">
                <c:param name="customerId" value="${customer.id}"/>
                </c:url>
                
                <c:url var="deleteLink" value="deleteCustomer">
                <c:param name="customerId" value="${customer.id}"/>
                </c:url>
                <tr>
                <td>${customer.firstName}</td>
                <td>${customer.lastName }</td>
                <td>${customer.email}</td>
                <td>
                <input type="button" value="Update" class="add-button" id="update" onclick="window.location.href='${updateLink}';">
                <input type="button" value="Delete" class="add-button" id="update" onclick="if(confirm('Are you sure you want to delete this Customer ?'))return window.location.href='${deleteLink}';">
                </td>
                </tr>
                </c:forEach>
			</table>
		</div>
	</div>
</body>
</html>