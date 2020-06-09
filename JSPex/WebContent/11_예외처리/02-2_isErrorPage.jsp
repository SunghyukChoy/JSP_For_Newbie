<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="02-1_isErrorPage_error.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>02-2_isErrorPage</title>
</head>
<body>
	name 파라미터 : <%= request.getParameter("name").toUpperCase() %>
</body>
</html>