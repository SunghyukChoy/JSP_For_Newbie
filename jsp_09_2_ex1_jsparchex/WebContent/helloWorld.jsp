<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1>Hello World</h1>
	
	<!-- jsp는 웹 어플리케이션 서버(WAS)에서 실행되고 HTML로 응답받기 때문에 브라우저에서 주석이 보이지 않음. -->	
	
	<!-- JSP 동작 원리  
	1) 웹브라우저 요청
	http://localhost:8080/JSPForNewbie/Lecture09/helloWorld.jsp
	
	2) JSP >> Servlet
	helloWorld.jsp >> helloWorld_jsp.java
	JSP 컨테이너가 JSP 파일을 Servlet파일(.java)로 변환.
	
	3) Servlet >> class
	helloWorld_jsp.java >> helloWorld_jsp.class
	Servlet 파일은 메모리에 올라가기 위해 컴파일러가 class 파일로 변환.
	
	4) 웹브라우저 응답
	html 형태로 응답	
	
	-->
	
	<!--
	1) 클라이언트가 jsp파일을 요청 시 메모리 상에 서블릿(.class) 파일 존재 유무 확인.
	2) 미 존재 시 .java .class를 이용하여 객체 생성
	3) 객체를 메모리에 올림
	4) 실행
	5) 응답	
	6) 위의 과정이 한 번 실행되면 또다른 요청 시 위의 과정을 반복할 필요 없이 객체를 재활용하여 바로 실행, 응답
	-->
	
	

</body>
</html>