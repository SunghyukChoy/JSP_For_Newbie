<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>title</title>
	<script>
		function loginCheck() {
			var login = document.loginForm;
			
			if(login.id.value.length < 4 || login.id.value.length > 12) {
				alert("아이디는 4 글자 ~ 12 글자 사이여야 합니다.");
				login.id.select();
				return false;
			} else if (login.password.value.length < 4) {
				alert("비밀번호는 4 글자 이상이어야 합니다.");
				login.password.select();
				return false;
			}
			
			login.submit();
		}
	</script>
</head>
<body>
	<form name="loginForm" method="post" action="validation-3_process.jsp">
		<p>아이디 : <input type="text" name="id">
		<p>비밀번호 : <input type="password" name="password">
		<p><input type="button" value="전송" onclick="loginCheck()"> 
	</form>
</body>
</html>