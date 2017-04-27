<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
 <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/Temp.css" rel="stylesheet" type="text/css" />
<title>Electronic RSVP Card</title>
</head>
<body> <h2>Guest RSVP Results</h2>
    <center><table>
        <tr>
            <td class="fontColor">First Name</td>
            <td class="fontColor">${g.firstName}</td>
        </tr>
        <tr>
            <td class="fontColor">Last Name</td>
            <td class="fontColor">${g.lastName}</td>
        </tr>
        <tr>
            <td class="fontColor">Attend</td>
            <td class="fontColor">${g.attend}</td>
        </tr>
        <tr>
            <td class="fontColor">Number of Guests</td>
            <td class="fontColor">${g.numberGuests}</td>
        </tr>        
        <tr>
            <td class="fontColor">Entree</td>
            <td class="fontColor">${g.entree}</td>
        </tr>
        <tr>
            <td class="fontColor">Kid's Meal</td>
            <td class="fontColor">${g.kidMeal}</td>
        </tr>
        </table></center><br><br>
<center><a href = "viewAll.mvc" style="font-size: 24px">View All Guest RSVP Responses</a></center>
</body>
</html>