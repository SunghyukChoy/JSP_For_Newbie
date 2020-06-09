<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>title</title>
</head>
<body>
	<%-- 스크립틀릿 태그에 지역 변수 선언 --%>
	<%
		int a = 10;
		int b = 20;
		int c = 30;
	%>
	
	<%-- 표현문
		- 웹 프라우저에 출력할 부분을 표현
		- 선언문이나 스크립틀릿에서 선언된 변수나 메소드의 return 값을 외부로 출력
		- 표현문은 스크립틀릿 내부에서 사용할 수 없으므로 out.println() 메소드를 사용
		- 기본 데이터 타입(숫자, 문자, 불리언)과 객체 타입 모두 사용 가능.
		- 표현문 내부에 작성된 모든 자바 코드의 값은 모두 "문자열"로 변환
			1) 기본 데이터 타입 : toString()를 통해 출력
			2) 객체 타입 : java.lang.Object 클래스의 toString() 또는 자체 선언한 toString() 사용 
				
	--%>
	
	<%-- 표현문. 출력에 관한 명령문(out.println) 없어도 출력 됨. 전역 변수, 지역 변수 상관없음.--%>	
	<%= a + b + c %>
</body>
</html>