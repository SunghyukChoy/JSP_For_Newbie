<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
<script>
 function checkLogin( ) {
	 var form = document.loginForm; 
	 
	 for ( i = 0; i < form.id.value.length; i++ ) { 
		 var ch = form.id.value.charAt( i ); 
		 		/* 인덱스의 i번째 글자를 변수 ch에 저장. */
		 			
		 
		 if ( ( ch < 'a' || ch > 'z' ) && ( ch > 'A' || ch < 'Z' ) && ( ch > '0' || ch < '9' ) ) { 
			 alert( "아이디는 영문 소문자로만 입력 가능 합니다!" ); 
			 form.id.select(); 
			 return;
			 } 
		 } 
	 
		 if ( isNaN( form.passwd.value ) ){
			 alert( "비밀번호는 숫자로만 입력 가능 합니다!" ); 
			 form.passwd.select(); 
			 return; 
			 } 
	 
		 form.submit();
	 }
 </script>
</head>
<body>
	<form name="loginForm" action="validation-4_process.jsp" method="post">
		<p>
			아 이 디 : <input type="text" name="id">
		</p>
		<p>
			비밀번호 : <input type="password" name="passwd">
		</p>
		<p>
			<input type="button" value="전송" onclick="checkLogin()">
		</p>
	</form>
</body>
<html>