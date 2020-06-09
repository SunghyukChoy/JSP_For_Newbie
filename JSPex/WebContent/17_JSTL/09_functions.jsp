<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>문자열 분리와 연결</title>
</head>
<body>
	<h2>&lt;fn:split&gt;와 &lt;fn:join&gt; 태그로 문자열 분리하고 연결</h2>
	<hr>
	<c:set var="texts" value="${fn:split('Hello, Java Server Pages!',' ')}" />
	<c:forEach var="i" begin="0" end="${fn:length(texts)-1}">
		<p>text[${i}] = ${texts[i]}
	</c:forEach>
	<p>
		<c:out value="${fn:join(texts, '-')}" />
	</p>




</body>
</html>