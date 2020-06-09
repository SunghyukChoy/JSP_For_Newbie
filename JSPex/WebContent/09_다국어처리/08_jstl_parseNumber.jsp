<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>parseNumber</title>
</head>
<body>
	<h2>parseNumber</h2>
	<fieldset>
	<legend>사용법</legend>
	<pre><code>
&lt;fmt:parseNumber value="파싱 할 숫자"
	[type="{number|currency|percent}"]
	[pattern="사용자 정의 패턴"]
	[parseLocale="파싱의 기본 형식 패턴을 제공하는 로케일"]
	[integerOnly="{true|false}"]
	[var="파싱 결과를 저장할 변수 이름"]
	[scope="{page|request|session|application}"] /&gt; <br>
	// 기본값 : page
	</code></pre>
	</fieldset>
	<hr>
	<p>패턴(없음) : <fmt:parseNumber value="1234.56"/>
	<p>패턴(0000.000) : <fmt:parseNumber value="1234.56" pattern="0000.000"/>
														<!-- 0은 자릿수를 맞춰 0을 채움. #은 의미 없는 자리는 채우지 않음. -->
	<p>패턴(####.###) : <fmt:parseNumber value="1234.56" pattern="####.###"/>
</body>
</html>