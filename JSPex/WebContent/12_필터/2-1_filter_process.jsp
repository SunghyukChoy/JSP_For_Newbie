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
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
	%>	
	
		<h3>입력된 id : <%=id %></h3>
		<h3>입력된 passwd : <%=passwd %></h3>
</body>
</html>