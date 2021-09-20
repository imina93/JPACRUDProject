<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/main.css"></link>
<head>
<meta charset="UTF-8">
<title>Update a Monster</title>
</head>
<body>
<h2>Please enter a Monster ID to update:</h2>
<div>
<form action="get.do" method="get" >
	<label>Monster ID: <input type="text" name="id" value="id" /></label><br/>
	<input type="submit" value="Update Monster By ID" />
</form>
</div>
</body>
</html>