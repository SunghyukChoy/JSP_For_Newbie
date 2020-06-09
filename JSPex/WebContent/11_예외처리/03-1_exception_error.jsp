<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>03-1_exception_error</title>
</head>
<body>
	<h2>오류가 발생하였습니다.</h2>
	<p>예외 : <%= exception %></p>
	<p>toString() : <%=exception.toString() %></p>
	<p>getClass().getName() : <%= exception.getClass().getName() %></p>
	<p>getMessage() : <%= exception.getMessage() %></p>
</body>
</html>