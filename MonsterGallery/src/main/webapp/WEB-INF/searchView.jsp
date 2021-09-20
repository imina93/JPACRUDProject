<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/main.css"></link>
<head>
<meta charset="UTF-8">
<title>Show Monster Information</title>
</head>
<body>

	<div>
		<c:choose>
			<c:when test="${not empty monster}">
				<span>Monster ID: </span>${monster.id}<br />
				<span>Monster Name: </span>${monster.name}<br />
				<span>Monster Size: </span>${monster.size}<br />
				<span>Monster Race: </span>${monster.race}<br />
				<span>Monster Alignment: </span>${monster.alignment}<br />
				<span>Monster Armor Class: </span>${monster.armorClass}<br />
				<span>Monster Challenge Rating: </span>${monster.challengeRating}<br />
				<span>Monster Description: </span>${monster.description}<br />
				<span>Monster : </span>
				<img alt="" src="${monster.imageUrl}">
				<br />



			</c:when>
			<c:otherwise>
		No Monster Found!
	</c:otherwise>
		</c:choose>
	</div>
	<hr />
	<a href="home.do">Back to Home</a>
</body>
</html>