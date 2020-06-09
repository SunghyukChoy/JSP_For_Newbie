<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="01-1_errorPage_error.jsp" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>01-2_errorPage</title>
</head>
<body>
	name 파라미터 : <%= request.getParameter("name").toUpperCase() %>
	<!-- 오류 발생 시킴. -->
</body>
</html>