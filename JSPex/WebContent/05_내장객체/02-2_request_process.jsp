<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<%
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
	%>

	아이디 :
	<%=id%>
	비밀번호:
	<%=pass%>
</body>
</html>