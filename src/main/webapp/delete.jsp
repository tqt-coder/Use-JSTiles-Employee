<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="de"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String index = request.getParameter("id");
%>
	<sql:update dataSource="${mysql}" var="count">
		DELETE FROM infor WHERE id= ?
		<sql:param value="<%= index %>" />
	</sql:update>
	<de:if test="${ count > 0}">
		<%
				request.setAttribute("msg", "Xóa thành công");
				RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
				rd.forward(request, response);
			%>

	</de:if>
</body>
</html>