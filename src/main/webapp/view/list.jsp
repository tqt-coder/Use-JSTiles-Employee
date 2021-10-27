<%@page import="model.ListEmployee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	<sql:query dataSource="${mysql }" var="result">
 	Select * from infor;
 </sql:query>
	<h2 class="list-title">List Employee</h2>
	<table>
		<tr>
			<th>ID</th>
			<th>Employee Name</th>
			<th>Gender</th>
			<th>Date of birth</th>
			<th>Department Name</th>
		</tr>

		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.id}" /></td>
				<td><c:out value="${row.name}" /></td>
				<td><c:out value="${row.Male}" /></td>
				<td><c:out value="${row.dateOfBirthday}" /></td>
				<td><c:out value="${row.department}" /></td>
				<td><a href="/JSTiles/view/addEmployee.jsp?id=<c:out value="${row.id}" />">edit</a>
					<a href="delete.jsp?id=<c:out value="${row.id}" />">delete</a></td>
			</tr>

		</c:forEach>

	</table>
</body>
</html>