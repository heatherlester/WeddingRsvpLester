<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/Temp.css" rel="stylesheet" type="text/css" />
<title>Guest RSVP Responses</title>
</head>
<body>
	<c:forEach items="${all}" var="item">
		<table>
			<tr>
				<td class="fontColor">First Name:</td>
				<td class="fontColor">${item.firstName}</td>
			</tr>
			<tr>
				<td class="fontColor">Last name:</td>
				<td class="fontColor">${item.lastName}</td>
			</tr>
			<tr>
				<td class="fontColor">Attendance:</td>
				<td class="fontColor">${item.attend}</td>
			</tr>
			<tr>
				<td class="fontColor">Number of Guests:</td>
				<td class="fontColor">${item.numberGuests}</td>
			</tr>
			<tr>
				<td class="fontColor">Entree:</td>
				<td class="fontColor">${item.entree}</td>
			</tr>
			<tr>
				<td class="fontColor">Kid's Meal:</td>
				<td class="fontColor">${item.kidMeal}</td>
			</tr>

		</table>
		<br />
		<hr style="text-align: left; margin-left: 0; width: 50%">
		<br />
	</c:forEach>
	<a href="form.mvc" style="font-size: 24px">Add a new user</a>
</body>
</html>