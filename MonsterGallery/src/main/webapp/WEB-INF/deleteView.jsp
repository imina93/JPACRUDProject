<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/main.css"></link>
<head>
<meta charset="UTF-8">
<title>Delete a Monster</title>
</head>
<body>
	<div>
	<c:choose>
		<c:when test="${isDeleted}">
		The Monster has been deleted!
	</c:when>
		<c:otherwise>
		Failure to delete!
	</c:otherwise>
	</c:choose>
	</div>
	<hr />
	<a href="home.do">Back to Home</a>

</body>
</html>