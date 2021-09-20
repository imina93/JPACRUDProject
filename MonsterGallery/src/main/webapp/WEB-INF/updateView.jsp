<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style/main.css" rel="stylesheet" type="text/css">

<title>Updated Monster Information</title>
</head>
<body>
	<div>
	<c:choose>
		<c:when test="${isUpdated}">
		Monster information has been updated!
	</c:when>
		<c:otherwise>
		Error updating Monster information!
	</c:otherwise>
	</c:choose>
	</div>
	<hr />
	<a href="home.do">Back to Home</a>
</body>
</html>