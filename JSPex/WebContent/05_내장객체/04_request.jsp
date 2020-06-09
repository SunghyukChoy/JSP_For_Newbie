<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>title</title>
</head>
<body>
	<h2>04_request.jsp</h2>
	<hr>
	<%
		Enumeration<?> en = request.getHeaderNames();
		while (en.hasMoreElements()) {
			String headerName = (String) en.nextElement();
			String headerValue = request.getHeader(headerName);
	%>
	<%=headerName%>:
	<%=headerValue%><br>
	<%
		}
	%>
</body>
</html>