<%@page import="model.Employee"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ListEmployee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		HttpSession session2 = request.getSession(false);
		session2.removeAttribute("sessionName");
		HttpSession se = request.getSession();
		ListEmployee.container = new ArrayList<Employee>();
		RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
		rd.forward(request, response);
	%>
</body>
</html>