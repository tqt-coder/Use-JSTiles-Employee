<%@page import="model.ListEmployee"%>
<%@page import="model.Employee"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
	<jsp:useBean id="em" class="model.Employee" scope="session"></jsp:useBean>
	<jsp:setProperty property="*" name="em"/>
	<td><jsp:getProperty property="nameEmployee" name="em"/></td>
	
	<sql:update dataSource="${mysql}" var="count">
	
		Insert into infor(name, gender, dateOfBirthday,department) values(?,?,?,?);
		<sql:param value="${param.nameEmployee}"/>
		<sql:param value="${param.gender}"/>
		<sql:param value="${param.dateOfBirthday}"/>
		<sql:param value="${param.department}"/>
	</sql:update>
	
	<c:if test="${count >0 }">
		<c:redirect url="home.jsp">
			<c:param name="msg2" value="Thêm thành công"/>
		</c:redirect>
	</c:if>
	
	
         
</body>
</html>