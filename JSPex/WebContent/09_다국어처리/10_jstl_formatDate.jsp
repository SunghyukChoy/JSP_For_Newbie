<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>formatDate</title>
</head>
<body>
	<h2>formatDate</h2>
	<fieldset>
	<legend>사용법</legend>
	<pre><code>
&lt;fmt:formatDate value="형식화 할 날짜"
	[type="{time|date|both}"]
	[dateStyle="{default|short|medium|long|full}"]	
	[timeStyle="{default|short|medium|long|full}"]
	[pattern="사용자 정의 패턴"]
	[timeZone="타임존"]
	[var="형식화된 결과를 저장할 변수 이름"]
	[scope="{page|request|session|application}"] /&gt; <br>
	// 기본값 : page	
	</code></pre>
	</fieldset>
	<hr>
	<jsp:useBean id="now" class="java.util.Date"/>
	<p>date 형식 : <fmt:formatDate value="${now }" type="date"/>
	<p>time 형식 : <fmt:formatDate value="${now }" type="time"/>
	<p>both 형식 : <fmt:formatDate value="${now }" type="both"/>
</body>
</html>