<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style/main.css" rel="stylesheet" type="text/css">

<title>Show All Monsters</title>
</head>
<body>
	<div>
	<table id="table-div">
		<tr>
		
        <th>ID</th>
        <th>Name</th>
        <th>Size</th>
        <th>Race</th>
        <th>Alignment</th>
        <th>Armor Class</th>
        <th>Challenge Rating</th>
        <th>Description</th>
		</tr>
		<c:forEach var="monster" items="${monsters}">
			<tr>
			<td>${monster.id}</td>
			 <td>${monster.name}</td>
            <td>${monster.size}</td>
            <td>${monster.race}</td>
            <td>${monster.alignment}</td>
            <td>${monster.armorClass}</td>
            <td>${monster.challengeRating}</td>
            <td>${monster.description}</td>
            <td><img alt="" src="${monster.imageUrl}"></td>
			</tr>
			
		</c:forEach>
	</table>
	</div>
	<hr />
	<a href="home.do">Back to Home</a>
</body>
</html>