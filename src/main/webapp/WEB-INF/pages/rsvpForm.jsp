<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/Temp.css" rel="stylesheet" type="text/css" />
<title>Electronic RSVP Card</title>
</head>
<body class="image">
<h2>RSVP FOR SANER WEDDING</h2>
<mvc:form modelAttribute="guest" action="result.mvc">
	<table class="alignment">
	    <tr>
	        <td class="font"><mvc:label path="firstName">First Name</mvc:label></td>
	        <td><mvc:input path="firstName" /></td>
	    </tr>
	    <tr>
	        <td class="font"><mvc:label path="lastName">Last Name</mvc:label></td>
	        <td><mvc:input path="lastName" /></td>
	    </tr>
        <tr>
	        <td class="font"><mvc:label path="attend">Attendance:</mvc:label></td>
	        <td><mvc:radiobuttons path="attend" /></td>
	    </tr>
	    <tr>
	        <td class="font"><mvc:label path="numberGuests">Number of Guests</mvc:label></td>
	        <td><mvc:input path="numberGuests" /></td>
	    </tr>
        <tr>
            <td class="font"><mvc:label path="entree">Entree</mvc:label></td>
            <td><mvc:select path="entree" items="${entrees}" /></td>
        </tr>
        <tr>
            <td class="font"><mvc:label path="kidMeal">Request kid's meal</mvc:label></td>
            <td><mvc:checkbox path="kidMeal" /></td>
        </tr>
        <tr><td> </td></tr>
        <tr>
	        <td colspan="2">
                <center><input type="submit" value="RSVP" class="button" /></center>
	        </td>
	    </tr>
	</table>  
</mvc:form>
<br>
<br>
<center><a href = "viewAll.mvc" style="font-size: 24px">View All Guest RSVP Responses</a></center>
</body>
</html>