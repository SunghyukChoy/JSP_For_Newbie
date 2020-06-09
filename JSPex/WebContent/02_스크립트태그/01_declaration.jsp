<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Scripting Tag</title>
</head>
<body>
	<%!int data = 50; %>
	<%
		out.println("변수 data의 값 : " + data);
		
	%>
</body>
</html>