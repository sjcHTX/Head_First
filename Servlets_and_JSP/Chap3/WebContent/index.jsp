<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Head First Chap 3</title>
		<link href="css/BeerAdvisor.css">
	</head>
	<body>

	<table>
		<tr>
			<th>Page</th>
			<th>URL</th>
		</tr>
		<tr>
			<td>Beer Form</td>
			<td><a href="BeerForm/form.html">Beer Form</a></td>
		</tr>	
	</table>
	
	<%
		out.print("<br>Session Count: " + (Integer) request.getServletContext().getAttribute("sessionCount"));
	%>
	
	
</body>
</html>