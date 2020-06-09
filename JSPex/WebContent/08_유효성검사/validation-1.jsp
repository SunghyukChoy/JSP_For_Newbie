<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>title</title>
</head>
<script>
	function CheckForm() {
		alert("아이디 : " + document.loginForm.id.value + "\n" + 
						/* getter() 역할. document.name.name.value */
				"비민번호 : " + document.loginForm.password.value	);
	}	
</script>
<body>
	<form name="loginForm" action="#" method="post">
		<p>아 이 디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="password"></p>
		<p><input type="submit" value="전송" onclick="CheckForm()"></p>
	</form>
</body>
</html>