<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>시큐리티</title>
</head>
<body>
	<h2>인증 성공!</h2>

	<!-- web.xml 파일 내의 태그
	<web-resource-name>JSPex</web-resource-name>	==> 프로젝트명
	<url-pattern>/10_시큐리티/01_security.jsp</url-pattern> ==> 처음 실행하는 파일 경로

	본 jsp 파일 실행 시 web.xml 파일에서	<auth-method>FORM</auth-method>	이므로 로그인 폼을 통한 인증을 함.
	<form-login-page>/10_시큐리티/02-1_login.jsp</form-login-page>
	에 따라 로그인 폼을 보여주기 위해 02-1_login.jsp 파일을 보여줌. 아이디와 패스워드를 입력하면
	  <auth-constraint> 태그 안의 <role-name>role1</role-name>에 따라 role1에 권한이 부여된 role-name만 로그인 가능함.	  
	  tomcat-users.xml 파일의 role 태그와 user 태그에서 username과 password에 속성값을 확인 후
	  값 일치 시에 실행하려던 01_security.jsp 실행됨.
	  tomcat-users.xml 파일에서 username과 roles가 설정되었다 하더라고 role-name의 태그에 설정돼 있지 않으면 권한 없음.
	  <role-name>tomcat</role-name> 추가 시 tomcat 아이디로 로그인 가능.
	  (같은 클럽의 회원이더라도 결제 회원이냐 일반 회원이냐 식의 차이)
	  tomcat-users.xml 파일의 role 태그와 user 태그에서 값이 설정되어 있다고 하더라도 role-name 태그에 설정이 되어있지 않으면 
	  권한없음의 에러 발생. 403에러. 그 이외의 무작위의 아이디와 패스워드 입력 시 
	  <form-error-page>/10_시큐리티/02-2_login_failed.jsp</form-error-page>에 따라
	  /10_시큐리티/02-2_login_failed.jsp 파일로 이동. 화면 출력. -->
	  
</body>
</html>