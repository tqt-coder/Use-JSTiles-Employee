<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <h4><%= request.getAttribute("msg") != null ? request.getAttribute("msg"): " "  %></h4>
  	<h4><c:out value="${param.msg2}" /></h4>
	<h2>Welcome to Employee Management System</h2>
</body>
</html>