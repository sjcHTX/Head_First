<%@page import="com.example.Dog"%>
<%@ page import="java.util.*" %>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="css/BeerAdvisor.css">
	</head>
	<body>
		<h1>Beer Recommendations JSP</h1>
		<p>
		<%
			List<String> styles = (List<String>)request.getAttribute("styles");
			Iterator<String> it = styles.iterator();
			while(it.hasNext()) {
				out.print("<br>try: " + it.next());
			}
			out.print("<br>Server Info: " + (String)request.getAttribute("serverInfo"));
			out.print("<br>Real path: " + (String)request.getAttribute("realPath"));
			
			Enumeration<String>	headerNames = (Enumeration<String>) request.getAttribute("headerNamesEnum");		
			out.print("<br>Servlet Header Names: ");
			while(headerNames.hasMoreElements()){
				
				out.print("<br>Header Name: " + headerNames.nextElement());
			}
								
			Enumeration<String>	attrNames = (Enumeration<String>) request.getAttributeNames();		
			out.print("<br>Servlet Attr Names: ");
			while(attrNames.hasMoreElements()){				
				out.print("<br>attr Name: " + attrNames.nextElement());
			}
						
			out.print("<br>corp email: " + (String)request.getAttribute("corpEmail"));
			Dog dog = (Dog) getServletContext().getAttribute("dog");
			out.println("<br>Dog's breed is: " + dog.getBreed());
			
			out.print("<br>Session Count: " + (Integer)request.getAttribute("sessionCount"));
			
			
		%>
		<br>		
		<a href="javascript:window.history.back()">	Previous page</a>
	</body>
</html>