<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>message</title>
</head>
<body>
	<h2>bundle</h2>
	<fieldset>
	<legend>사용법</legend>
		<pre><code>
		&lt;fmt:bundle basename="리소스번들" [prefix="key 이름"]/&gt;
		// body 내용
		&lt;/fmt:bundle/&gt;
		</code></pre>
	</fieldset>
	<h2>message</h2>
	<fieldset>
	<legend>사용법</legend>
	<pre><code>
	&lt;fmt:message
	key="메세지 key 이름"
	[bundle="setBundle 태그의 변수 이름"]
	[var="메세지를 저장하는 변수 이름"]
	[scope="{page|request|session|application}"] /&gt;
	</code></pre>
	</fieldset>
	<hr>
	<fmt:bundle basename="s09.com.bundle.message">
				<!-- basename : 확장자를 제외한 full path. -->
				<!-- properties 파일 확장자는 영어가 아닌 언어를 자동으로 유니코드로 바꿈. -->
		<p><fmt:message key="name"/></p>
						<!-- name : basename 경로의 name 속성 -->	
		<fmt:message key="filename" var="msg"/>
						<!-- var : 변수 선언. -->
		<h3>${ msg }</h3>
	</fmt:bundle>
</body>
</html>