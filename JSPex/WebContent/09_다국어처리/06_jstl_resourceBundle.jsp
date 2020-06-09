<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>리소스번들 메시지</title>
</head>
<body>
	<h2>----------기본 로케일----------</h2>
	<fmt:setBundle basename="s09.com.bundle.exBundle" var="resourceBundle"/>
	<p>제목 : <fmt:message key="title" bundle="${resourceBundle}"/></p>
	<fmt:message key="username" var="userMsg" bundle="${resourceBundle }"/>
	<p>이름 : ${userMsg }</p>
	
	<h2>----------영문 로케일----------</h2>
	<fmt:setLocale value="en"/>
	<fmt:setBundle basename="s09.com.bundle.exBundle" var="resourceBundle"/>
	<p>제목 : <fmt:message key="title" bundle="${resourceBundle }"/></p>
	<p>이름 : <fmt:message key="username" bundle="${resourceBundle }"/></p>
	
</body>
</html>