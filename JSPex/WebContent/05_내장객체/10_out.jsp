<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>title</title>
</head>
<body>
	<h2>10_out.jsp</h2>
	<hr>
	<%
		out.println("오늘의 날짜 및 시각 " + "<br>");
		out.println(java.util.Calendar.getInstance().getTime());
	%>
</body>
</html>