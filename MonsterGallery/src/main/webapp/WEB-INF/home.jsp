<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="css/main.css"></link>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Monster Gallery!</title>
</head>
<h1>Welcome to the Monster Gallery!</h1>
<body>
<h3>Debug:</h3>
<%-- ${monsters} --%>
<div class="container-fluid"> 
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
    </tr>
    <c:forEach items="${monsters}" var="monster">
        <tr>
            <td>${monster.id}</td>
            <td>${monster.name}</td>
        </tr>
    </c:forEach>
</table>
<form action="show.do" method="GET">
			Monster ID: <input type="text" name="id" /> <input type="submit"
				value="Show Monster" />
		</form>
</div>


</body>
</html>