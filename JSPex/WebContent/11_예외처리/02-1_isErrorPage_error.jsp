<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage = "true" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>02-1_isErrorPage_error</title>
</head>
<body>
	<h2>오류가 발생하였습니다.</h2>
	<!-- exception 객체 사용 가능. exception 객체의 메소드 사용 가능. -->
	<p>예외 유형 : <%= exception.getClass().getName() %></p>
	<p>오류 메세지 : <%= exception.getMessage() %></p>
</body>
</html>