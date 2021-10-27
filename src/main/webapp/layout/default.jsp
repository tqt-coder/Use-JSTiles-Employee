<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><tiles:getAsString name="title" /></title>
</head>
<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}



section {
	margin-top: 100px;
	padding: 40px 80px;
}


</style>

<body>

	<header>
		<tiles:insertAttribute name="header" />
	</header>

	<section>

		<tiles:insertAttribute name="body" />
	</section>

	<footer>
		<tiles:insertAttribute name="footer" />
	</footer>
</body>

</html>