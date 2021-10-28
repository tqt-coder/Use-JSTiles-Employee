<%@page import="model.Employee"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
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

	<jsp:setProperty name="em" property="id" />
	<jsp:setProperty name="em" property="nameEmployee" />
	<jsp:setProperty name="em" property="gender" />
	<jsp:setProperty name="em" property="dateOfBirthday" />
	<jsp:setProperty name="em" property="department" />

	<c:if test="${param.id == '' }">
		<sql:update dataSource="${mysql}" var="count">
	
		Insert into infor(name, gender, dateOfBirthday,department) values(?,?,?,?);
		<sql:param value="${em.nameEmployee}" />
			<sql:param value="${em.gender}" />
			<sql:param value="${em.dateOfBirthday}" />
			<sql:param value="${em.department}" />
		</sql:update>

		<c:if test="${count >0 }">
			<c:redirect url="home.jsp">
				<c:param name="msg2" value="Thêm thành công" />
			</c:redirect>
		</c:if>

	</c:if>
	<c:if test="${param.id != null }">
		<sql:update dataSource="${mysql}" var="count">
	
		Update infor set name= ?, gender= ?, dateOfBirthday= ?,department= ? where id= ?;
			<sql:param value="${em.nameEmployee}" />
			<sql:param value="${em.gender}" />
			<sql:param value="${em.dateOfBirthday}" />
			<sql:param value="${em.department}" />
			<sql:param value="${em.id}" />
		</sql:update>

		<c:if test="${count >0 }">
			<c:redirect url="home.jsp">
				<c:param name="msg2" value="Sửa thành công" />
			</c:redirect>
		</c:if>
	</c:if>



</body>
</html>