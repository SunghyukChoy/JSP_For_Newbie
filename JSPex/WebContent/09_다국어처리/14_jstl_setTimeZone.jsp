<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>setTimeZone</title>
</head>
<body>
	<h2>setTimeZone</h2>
	<fieldset>
	<legend>사용법</legend>
		<pre><code>
&lt;fmt:setTimeZone	value="타임존">
		[var="시간대 결과를 저장할 변수 이름"]
		[scope="{page|request|session|application}"] /&gt;		
		</code></pre>
	</fieldset>
	<hr>
	<jsp:useBean id="now" class="java.util.Date"/>
	<p>한국 : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/></p>
	
	<fmt:setTimeZone value="GMT-8"/>
	<p>뉴욕 : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/></p>
	
	<fmt:setTimeZone value="GMT"/>
	<p>런던 : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/></p>
</body>
</html>