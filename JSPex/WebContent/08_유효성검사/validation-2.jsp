<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>title</title>
	<script>
		function checkLogin() {
			var form = document.loginForm;
				/* 폼태그의 loginForm을 객체로 생성 */
			if(form.id.value == "") {
				/* null을 안 쓰는 이유 : "null"이라는 텍스트로 인식할 수 있으므로. */
				alert("아이디를 입력해 주세요.");
				form.id.focus();
				return false;
			} else if (form.password.value == "") {
				alert("비밀번호를 입력해 주세요");
				form.password.focus();
				return false;
			}
			form.submit();
			/* form을 넘겨줘라. form 태그의 action 속성값으로 넘겨줌. */
		}
	</script>
</head>
<body>
	<form name="loginForm" action="validation-2_process.jsp" method="post">
		<p>아 이 디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="password"></p>
		<p><input type="button" value="전송" onclick="checkLogin()"></p>
	</form>
</body>
</html>