<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.form-employee {
	width: 400px;
	padding: 40px 80px;
}

.employee-tilte {
	font-size: 24px;
}

.employee-infor {
	display: block;
}

.employee-detail {
	width: 300px;
	height: 40px;
	padding: 10px;
	font-size: 16px;
	outline: none;
}

.employee-infor {
	margin: 10px 0;
	font-size: 16px;
}

.employee-option {
	width: 300px;
	height: 40px;
	padding: 0 10px;
	outline: none;
}

.employee-detail__gender {
	margin-left: 10px;
	margin-right: 3px;
}

.employee-infor__gender {
	margin: 10px 20px 0 0;
	display: inline-block;
}

.employee-btn {
	margin: 20px;
	width: 200px;
	height: 40px;
	background-color: rgb(75, 75, 194);
	border-color: transparent;
	font-size: 16px;
}

.value__gender {
	display: none;
}
</style>
<body>
	<jsp:useBean id="employee" class="model.Employee" />
	<jsp:setProperty property="id" name="employee" />
	<sql:query dataSource="${mysql }" var="result">
 	Select * from infor where id='${employee.id}';
 </sql:query>

	<form action="/JSTiles/handler.jsp?id=<c:out value="${param.id}" />"
		class="form-employee" method="Post">
		<h2 class="employee-tilte">Add an Employee</h2>
		<span class="employee-infor">Name:</span> <input type="text"
			name="nameEmployee" class="employee-detail" placeholder="Enter name"
			value="${result.rows[0].name }"> </br> <span
			class="employee-infor__gender">Gender:</span> <input type="radio"
			id="gender" value="Male" name="gender"
			class="employee-detail__gender">Male <input type="radio"
			id="gender" value="Female" name="gender"
			class="employee-detail__gender">Female <span
			class="employee-infor">Date of birth:</span> <input type="date"
			name="dateOfBirthday" class="employee-detail"
			placeholder="yyyy/mm/dd" value="${result.rows[0].dateOfBirthday }">
		<span class="employee-infor">Department</span> <select
			class="employee-option" name="department">
			<option value="FA">FA</option>
			<option value="FSU1">FSU1</option>
			<option value="FSU2">FSU2</option>
			<option value="FSU3">FSU3</option>
			<option value="FSU4">FSU4</option>
		</select> <input type="submit" class="employee-btn" value="Add employee">
		
	</form>
		<input type="text" class="value__gender" value="${result.rows[0].gender }">
	
	<script>
		var inputs = document.querySelectorAll('input[name="gender"]');
		var valueGender = document.querySelector('.value__gender').value;
		Array.from(inputs).forEach(function(input, index) {
			if(input.value === 'Female' && valueGender === 'Female')
				{
					input.checked = true;
				}
			if(input.value === 'Male' && valueGender === 'Male')
			{
				input.checked = true;
			}
		});
	</script>
</body>
</html>