<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<%--
		스크립틀릿
		- 자바 코드로 이루어진 로직 부분
		- 가장 일반적으로 사용
		- 모든 텍스트, HTML 태그, JSP 요소는 스크립틀릿 외부에 있어야 함
		- 서블릿으로 변환될 때
			1) _jspService() 내부에 복사
				--> 지역 변수
			2) 선언된 변수는 해당 스크립틀릿 내에서만 사용 가능
		- 기본적으로 메소드 없이 변수만 선언 가능
	--%>
	<%
		for (int i = 0; i <= 10; i++) {
			if (i % 2 != 1) {
				out.println(i);
			}
			out.println("<br>");
		}
	%>

	<%
		for (int i = 0; i <= 10; i++) {
			if (i % 2 == 0) {
				out.println("<p>" + i);
			}
		}
	%>
	<% out.println("<br>"); 
		out.println("<p>");
	%>
	<%
		for (int i = 0; i <= 10; i++) {
			if (i % 2 == 0) {
				out.println(i + "<br>");
			}
		}
	%>
</body>
</html>