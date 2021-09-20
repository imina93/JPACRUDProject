<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/main.css"></link>
<head>
<meta charset="UTF-8">
<title>Monster Creation</title>
</head>
<body>
	<form action="add.do" method="POST">
		<table>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" required class="monsterinfo" /></td>
			</tr>
			<tr>
				<td>Size</td>
				<td><input type="text" name="size" required class="monsterinfo" /></td>
			</tr>
			<tr>
				<td>Race</td>
				<td><input type="text" name="race" required class="monsterinfo" /></td>
			</tr>
			<tr>
				<td>Alignment</td>
				<td><input type="text" name="alignment" required
					class="monsterinfo" /></td>
			</tr>
			<tr>
				<td>Challenge Rating</td>
				<td><input type="text" name="challengeRating" required
					class="monsterinfo" /></td>
			</tr>
			<tr>
				<td>Armor Class</td>
				<td><input type="text" name="armorClass" required
					class="monsterinfo" /></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><input type="text" name="description" size="500"
					maxlength="500" required class="monsterinfo" /></td>
			</tr>
			<tr>
				<td>URL for Image</td>
				<td><input type="text" name="imageUrl" required
					class="monsterinfo" /></td>
			</tr>

		</table>
		<button type="submit" class="monsterinfo">Add Monster</button> 
	</form>
	<br>
	<a href="home.do">Back to Home</a>
</body>
</html>