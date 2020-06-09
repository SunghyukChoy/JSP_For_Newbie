<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>timeZone</title>
</head>
<body>
	<h2>timeZone</h2>
	<fieldset>
	<legend>사용법</legend>
		<pre><code>
&lt;fmt:timeZone value="타임존"&gt;
	// body 내용
&lt;fmt:timeZone&gt;			
		</code></pre>
	</fieldset>
	<hr>
	<jsp:useBean id="now" class="java.util.Date"/>
	<p>한국 : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/></p>
	
	<fmt:timeZone value="GMT-8">
	<p>뉴욕 : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/></p>
	</fmt:timeZone>
	
	<fmt:timeZone value="GMT">
	<p>런던 : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/></p>
	</fmt:timeZone>
</body>
</html>