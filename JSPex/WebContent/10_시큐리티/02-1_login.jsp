<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>시큐리티</title>
</head>
<body>
	<form name="loginForm" action="j_security_check" method="post">
		<p>사용자명 : <input type="text" name="j_username"/></p>
		<p>비밀번호 : <input type="password" name="j_password" /></p>
		<p><input type="submit" value="전송" /></p>
	</form>
	
	
</body>
</html>