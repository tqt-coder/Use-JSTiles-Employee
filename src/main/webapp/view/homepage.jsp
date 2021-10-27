<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  	<h4><%= request.getAttribute("msg2") != null ? request.getAttribute("msg2"):"  " %></h4>
	<h2>Welcome to Employee Management System</h2>
</body>
</html>