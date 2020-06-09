<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>title</title>
</head>
<body>
	<h2>08_response.jsp</h2>
	<hr>
	<p>이 페이지는 5초마다 새로고침 됩니다.
	<%
		response.setIntHeader("Refresh", 5);
		/* 자동으로 데이터 갱신하고자 할 때 사용. */
	%>
	<p><%=(new java.util.Date()).toLocaleString()%>
</body>
</html>