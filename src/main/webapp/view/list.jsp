<%@page import="model.ListEmployee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.list-title {
	font-size: 24px;
}

table {
	margin: 50px 0;
	border-collapse: collapse;
}

th, td, tr {
	border: 1.4px solid #000;
}

tr {
	height: 50px;
}

td, th {
	width: 200px;
	text-align: center;
}

td:first-child, th:first-child {
	width: 80px;
}
</style>
<body>
	<h2 class="list-title">List Employee</h2>
	<table>
		<tr>
			<th>ID</th>
			<th>Employee Name</th>
			<th>Gender</th>
			<th>Date of birth</th>
			<th>Department Name</th>
		</tr>

		<% for(int i=0 ; i< ListEmployee.container.size();i++){
        	   %>
		<tr>
			<td><%= i+1 %></td>
			<td><%= ListEmployee.container.get(i).getNameEmployee() %></td>
			<td><%= ListEmployee.container.get(i).getGender() %></td>
			<td><%= ListEmployee.container.get(i).getDateOfBirthday() %></td>
			<td><%= ListEmployee.container.get(i).getDepartment() %></td>
		</tr>
		<% } %>
	</table>
</body>
</html>