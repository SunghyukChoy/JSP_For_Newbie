<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>title</title>
</head>
<body>
	<h2>11-2_out_process.jsp</h2>
	<hr>
	<%
		request.setCharacterEncoding("utf-8");
		String userid = request.getParameter("id");
		String password = request.getParameter("pass");
	%>
	
	<p>아 이 디 : <%out.println(userid); %>
	<p>비밀번호 : <%out.println(password); %>
</body>
</html>