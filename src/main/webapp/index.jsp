<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<sql:setDataSource var="mysql" scope="session" driver="com.mysql.jdbc.Driver" 
	url="jdbc:mysql://localhost/employee"
	user="root" password="1234"
/>

<tiles:insertDefinition name="login" />
</body>
</html>