<%@ page import="java.util.*" %>
<html>
	<body>
		<h1 align="center">Beer Recommendations JSP</h1>
		<p>
		<%
			List styles = (List)request.getAttribute("styles");
			Iterator it = styles.iterator();
			while(it.hasNext()) {
				out.print("<br>try: " + it.next());
			}
		%>
		
		<a href="javascript:window.history.back()">	Previous page</a>
	</body>
</html>