<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>title</title>
</head>
<body>
	<h2>07-1_response.jsp</h2>
	<hr>
	<form action="07-2_response_process.jsp" method="post">
		<p>아 이 디 : <input type="text" name="id">
		<p>비밀번호 : <input type="text" name="pass">
		<p><input type="submit" value="전송">
	</form>
</body>
</html>