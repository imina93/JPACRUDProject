<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/main.css"></link>
<head>
<meta charset="UTF-8">
<title>New Monster Information</title>
</head>
<body>
	<div>
	<c:choose>
		<c:when test="${isAdded}">
		A new Monster has been added to database!
	</c:when>
		<c:otherwise>
		Error updating database!
	</c:otherwise>
	</c:choose>
	</div>
	<hr />
	<a href="home.do">Back to Home</a>
</body>
</html>