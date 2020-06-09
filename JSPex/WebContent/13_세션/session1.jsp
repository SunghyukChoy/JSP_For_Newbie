<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>session1</title>
</head>
<body>
	<form action="session1_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="text" name="passwd"/></p>
		<p><input type="submit" value="전송" /></p>
	</form>
	
	<!-- 세션 생성, 삭제, 유효시간 설정하는 것 중요. -->
</body>
</html>