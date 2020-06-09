<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>title</title>
</head>
<body>
	<h2>07-2_response_process.jsp</h2>
	<hr>
	<%
		request.setCharacterEncoding("utf-8");
		String userid = request.getParameter("id");
		String password = request.getParameter("pass");
		
		if(userid.equals("관리자") && password.equals("1234")) {
			response.sendRedirect("07-3_response_success.jsp");
		} else {
			response.sendRedirect("07-4_response_failed.jsp");
		}
	%>
</body>
</html>