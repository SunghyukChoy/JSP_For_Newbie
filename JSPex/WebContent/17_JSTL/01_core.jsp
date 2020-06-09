<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>변수 설정과 삭제</title>
</head>
<body>
	<h2>웹 브라우저 헤더를 변수에 설정하고 삭제하기</h2>
	<hr>
	browser 변수 값 설정
	<c:set var="browser" value="${header['User-Agent'] }" />
	<br>
	<c:out value="${browser }" />
	<p>
		browser 변수 값 제거 후
		<c:remove var="browser" />
		<c:out value="${browser}" />
	</p>
</body>
</html>