f<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>title</title>
</head>
<script>
	function loginCheck() {
		alert("아이디 : " + document.loginForm.id.value + "\n" +
				"비밀번호 : " + document.loginForm.pass.value);
	}
</script>
<body>
	<form name="loginForm" method="post">
		<p>아이디 : <input type="text" name="id" ></p>
		<p>비밀번호 : <input type="password" name="pass"></p>
		<p><input type="submit" value="전송" onclick="loginCheck()">
	</form>
</body>
</html>