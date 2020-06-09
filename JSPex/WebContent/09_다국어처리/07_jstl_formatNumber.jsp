<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>formatNumber</title>
</head>
<body>
	<h2>formatNumber</h2>
	<fieldset>
	<legend>사용법</legend>
	<pre><code>
	&lt;fmt:formatNumber value="형식화 할 숫자"
	[type="{number|currency|percent}"]	//기본값 : number
	[pattern="사용자 정의 패턴"]
	[currencyCode="통화 코드"]	//type="currency"일 때만 적용
	[currencySymbol="통화 기호"]	//type="currency"일 때만 적용
	[groupingUsed="천 단위 구분 기호{true|false}"]		//기본값 : true
	[maxIntegerDigits="최대 자릿수"]
	[minIntegerDigits="최소 자릿수"]
	[maxFractionDigits="소수점 이하 최대 자릿수"]
	[minFractionDigits="소수점 이하 최소 자릿수"]
	[var="형식화된 결과를 저장할 변수 이름"]
	[scope="{page|request|session|application}"] /&gt; <br>
	// 기본값 : page
	</code></pre>
	</fieldset>
	<hr>
	<p>숫자 : <fmt:formatNumber value="1234.567" type="number"/></p>
	<p>통화 : <fmt:formatNumber value="1234.567" type="currency" currencySymbol="₩"/>
	<p>퍼센트 : <fmt:formatNumber value="1234.567" type="percent"/>
	<p>패턴(.0000) : <fmt:formatNumber value="1234.567" pattern=".0000"/>
</body>
</html>