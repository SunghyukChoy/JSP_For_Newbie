<%@ page contentType="text/html; charset=UTF-8"
    %>

<html>
<head>
	
	<title>title</title>
</head>
<body>
	<%
		String title = request.getParameter("title");
	%>
	<h3><%=java.net.URLDecoder.decode(title) %></h3>
	오늘 : <%=request.getParameter("date") %>
</body>
</html>