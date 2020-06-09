<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>title</title>
</head>
<body>
	<%-- 선언문
		 - 전역 변수 또는 전역 메소드를 선언
		 - 서블릿으로 번역될 때
		 1) _jspService() 메소드 외부에 배치 
		 	--> jsp 페이지 임의의 위치에서 선언 가능. 순서에 영향을 받지 않는다.
		 2) 클래스 멤버 변수로 인식
	--%>
	<%-- 선언문: 전역 메소드 --%>
	<%!String makeItLower(String data) {
		return data.toLowerCase();
	}%>
	<%!String makeItUpper(String data) {
		return data.toUpperCase();
	}%>
	
	<%
		out.println(makeItLower("Hello JSP World"));
	%>
	<% out.println("<br>"); %>
	<%
		out.println(makeItUpper("Hello JSP World"));
	%>
</body>
</html>