<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>title</title>
</head>
<body>
	<h2>09_response.jsp</h2>
	<hr>
	<%
		response.sendError(404, "요청 페이지를 찾을 수 없음!");
								/* 작성된 메세지를 오류 메세지로 출력 */
	%>
</body>
</html>