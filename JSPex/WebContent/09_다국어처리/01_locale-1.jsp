<%@ page language="java" contentType="text/html; charset=UTF-8"
    %>
<%@ page import="java.util.Locale" %>
<%
	Locale locale = request.getLocale();
	/* request 내장 객체를 이용하여 현재 웹 브라우저에 미리 정의된 언어나 국가 정보를 가져옴. */
	
	String displayLanguage = locale.getDisplayLanguage();
	String language = locale.getLanguage();
	String displayCountry = locale.getDisplayCountry();
	String country = locale.getCountry();
%>    
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>title</title>
</head>
<body>
	<h2>로케일 감지 메소드 사용</h2>
	<hr>
	<%
		out.println("로케일 언어 : " + displayLanguage + "<br>");
		out.println("로케일 언어 코드 : " + language + "<br>");
		out.println("로케일 국가 : " + displayCountry + "<br>");
		out.println("로케일 국가 코드 : " + country + "<br>");
	%>
</body>
</html>