<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>setBundle</title>
</head>
<body>
	<h2>setBundle</h2>
	<fieldset>
	<legend>사용법</legend>
	<pre><code>
	&lt;fmt:setBundle
	basename="리소스번들"
	[var="리소스번들을 저장할 변수 이름"]
	[scope="{page|request|session|application}"]/&gt;
	</code></pre>
	</fieldset>
	<hr>
	<fmt:setBundle var="message" basename="s09.com.bundle.message"/>
	<p><fmt:message bundle="${message }" key="name"/></p>
	<fmt:message bundle="${message }" key="filename" var="msg"/>
	<h3>${msg }</h3>
</body>
</html>