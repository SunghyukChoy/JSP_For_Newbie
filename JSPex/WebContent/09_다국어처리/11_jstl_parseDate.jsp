<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>parseDate</title>
</head>
<body>
	<h2>parseDate</h2>
	<fieldset>
	<legend>사용법</legend>
		<pre><code>
&lt;fmt:parseDate	value="파싱 할 날짜"
	[type="{time|date|both}"]
	[dateStyle="{default|short|medium|long|full}"]	
	[timeStyle="{default|short|medium|long|full}"]
	[pattern="사용자 정의 패턴"]
	[timeZone="타임존"]
	[parseLocale="파싱의 기본 형식 패턴을 제공하는 로케일"]
	[var="형식화된 결과를 저장할 변수 이름"]
	[scope="{page|request|session|application}"] /&gt; <br>
// 기본값 : page			
		</code></pre>
	</fieldset>
	<hr>
	<p><fmt:parseDate value="20300422142932" pattern="yyyyMMddHHmmss"/></p>
	<p><fmt:parseDate pattern="yyyyMMddHHmmss">20300422142932</fmt:parseDate></p>
	
	<fmt:parseDate value="20300422142932" pattern="yyyyMMddHHmmss" var="date" scope="page"/>
	<p><fmt:formatDate value="${date }" pattern="yyyy-MM-dd HH:mm"/></p>
</body>
</html>