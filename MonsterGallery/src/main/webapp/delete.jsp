<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/main.css"></link>
<head>
<meta charset="UTF-8">
<title>Delete a Monster</title>
</head>
<body>

<h2>Please enter Monster ID for deletion:</h2>
<div>
<form action="delete.do" method="get">
	<label>Monster ID: <input type="text" name="id" value="id" /></label><br/>
	<input type="submit" value="Delete By Id" />
</form>
</div>

</body>
</html>