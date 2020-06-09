<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>title</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
	%>
	<p>입력된 name 값 : <%=name %></p>
</body>
</html>