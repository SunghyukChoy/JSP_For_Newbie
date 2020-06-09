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
			
			if(login.id.value == "") {
				alert("아이디를 입력해 주세요.");
				login.id.focus();
				return false;
			} else if(login.password.value == "") {
				alert("비밀번호를 입력해 주세요.");
				login.password.focus();
				return false;
			}
			login.submit();
		}
	</script>
</head>
<body>
	<form name="loginForm" action="validation-2_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id">
		<p>비밀번호 : <input type="password" name="password">
		<p><input type="button" value="전송" onclick="loginCheck()">
	
	</form>
</body>
</html>