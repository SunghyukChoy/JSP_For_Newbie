<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>title</title>
</head>
<body>
	<h2>03_HTTP_header_info.jsp</h2>
	<h2>HTTP 헤더 정보 출력하기</h2>
	<hr>
	<%
		String hostValue = request.getHeader("host");
		String alValue = request.getHeader("accept-language");

		out.print("호스트명 : " + hostValue + "<br>");
		out.print("설정된 언어 : " + alValue);
	%>
</body>
</html>