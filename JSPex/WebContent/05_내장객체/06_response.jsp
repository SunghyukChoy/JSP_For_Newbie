<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Implicit Objects</title>
</head>
<body>
	<h2>06_response.jsp</h2>
	<hr>
	<%
		response.sendRedirect("http://google.com");
		/* sendRedirect() : 지정한 곳으로 보냄. */
	%>
</body>
</html>