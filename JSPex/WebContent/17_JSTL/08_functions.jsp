<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>문자열 검색</title>
</head>
<body>
	<h2>&lt;fn:contains&gt;와 &lt;fn:containsIgnoreCase&gt; 태그로 문자열 검색</h2>
	<hr>
	<h3>java 문자열 검색</h3>
	<p>Hello, Java Server Pages! => ${fn:contains("Hello, Java Server Pagaes!", "java") }</p>
	<p>Hello, Java Server Pages! => ${fn:containsIgnoreCase("Hello, Java Server Pagaes!", "java") }</p>
</body>
</html>