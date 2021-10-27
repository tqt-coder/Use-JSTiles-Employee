<%@page import="model.ListEmployee"%>
<%@page import="model.Employee"%>
<%@page import="controller.HandlerPass"%>
<%@page import="java.util.ArrayList"%>
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
		String pass = request.getParameter("pass");
		String name = request.getParameter("username");
		if(pass.equals(HandlerPass.pass)){
			HttpSession session1 = request.getSession(true);
			session1.setAttribute("sessionName", name);
			ListEmployee.container = new ArrayList<Employee>();
			
			RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
			rd.forward(request, response);
		}
		else{
			request.setAttribute("msg", "Login failed");
			
			RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
			rd.forward(request, response);
		}
	%>
</body>
</html>