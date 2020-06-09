<%@ page contentType="text/html"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Locale" %>
<%
	response.setContentType("text/html");
	response.setHeader("Content-Language", "fr"); 
	/* 다양한 국가별 언어를 제대로 표현하기 위해 response 내장 객체의 setHeader() 메소드 사용 */
	
	String title = "un mot aux sages";
	String word = "Hors de la vue, hors de l'esprit";
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title><%= title %></title>
</head>
<body>
	<h2>로케일의 언어 설정</h2>
	<hr>
	<h3><%= word %></h3>
	<!-- 번역 여부 묻지 않음. 프랑스어로 나오게 설정했기 때문에. -->
</body>
</html>