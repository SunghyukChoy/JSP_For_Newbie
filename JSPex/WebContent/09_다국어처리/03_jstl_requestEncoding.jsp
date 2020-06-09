<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSP</title>
</head>
<body>
	<h2>setLocale</h2>
	<fieldset>
	<legend>사용법</legend>
		<pre><code>
		&lt;fmt:setLocale <br>
		value="언어코드[_국가코드]" <br>
		[scope="{page|request|session|application}"] /&gt; <br>	
		// 기본값 : page	
		</code></pre>
	</fieldset>
	<hr>
	
	<h3>기본 : <%=response.getLocale() %></h3>
	
	<fmt:setLocale value="ko"/>
	<h3>value="ko" : <%=response.getLocale() %></h3>
	
	<fmt:setLocale value="en"/>
	<h3>value="en" : <%=response.getLocale() %></h3>
	
	<fmt:setLocale value="ru"/>
	<h3>value="ru" : <%=response.getLocale() %></h3>
	
	<!-- 특정한 영역에 특정한 언어로 처리할 수 있음. -->
</body>
</html>