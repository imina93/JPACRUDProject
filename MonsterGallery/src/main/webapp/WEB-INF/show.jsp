<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="css/main.css"></link>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Monster Details</title>
</head>
<body>
<table>
    <tr>
        <th>Name</th>
        <th>Size</th>
        <th>Race</th>
        <th>Alignment</th>
        <th>Armor Class</th>
        <th>Challenge Rating</th>
        <th>Description</th>
    </tr>
        <tr>
            <td>${monster.name}</td>
            <td>${monster.size}</td>
            <td>${monster.race}</td>
            <td>${monster.alignment}</td>
            <td>${monster.armorClass}</td>
            <td>${monster.challengeRating}</td>
            <td>${monster.description}</td>
            <td><img alt="" src="${monster.imageUrl}"></td>
        </tr>

</table>
</body>
</html>