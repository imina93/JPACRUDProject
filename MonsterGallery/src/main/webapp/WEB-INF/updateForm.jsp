<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/main.css"></link>
<head>
<meta charset="UTF-8">
<title>Update Monster Information</title>
</head>
<body>
<h2>Please enter information to update:</h2>
<div>
<c:choose>
	<c:when test="${empty monster}">
		Monster ID invalid.
	</c:when>
	<c:otherwise>
	<form action="update.do" method="get">
		<label>Monster ID: <input type="text" name="id" value="${monster.id}" /></label><br />
		<label>Monster Name: <input type="text" name="name" value="${monster.name}" /></label><br /> 
		<label>Monster Size: <input type="text" name="size" value="${monster.size}" /></label><br /> 
		<label>Monster Race: <input type="text" name="race" value="${monster.race}" /></label><br /> 
		<label>Monster Alignment: <input type="text" name="alignment" value="${monster.alignment}" /></label><br /> 
		<label>Monster Armor Class: <input type="text" name="armorClass" value="${monster.armorClass}" /></label><br /> 
		<label>Monster Description: <input type="text" name="description" value="${monster.description}" /></label><br /> 
		<label>Monster Image Url: <input type="text" name="imageUrl" value="${monster.imageUrl}" /></label><br /> 
		<input type="submit" value="Update a Monster" />
	</form>
	</c:otherwise>
</c:choose>
</div>
</body>
</html>