<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>내장 객체</title>
</head>
<body>
	<h2>01-2_process.jsp</h2>
	<hr>
	<%
		request.setCharacterEncoding("utf-8");
		/* 입력한 글자 깨지지 않게 하기 위하여 */
	String name = request.getParameter("name");
		/* "name" : input 태그 name 속성의 속성값 */
	%>
	
	<p>이름 : <%=name %></p>
</body>
</html>