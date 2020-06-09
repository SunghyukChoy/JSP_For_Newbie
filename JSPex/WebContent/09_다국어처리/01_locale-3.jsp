<%@ page contentType="text/html"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Locale,java.util.Date"%>
<%@ page import="java.text.DateFormat"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Locale Date</title>
</head>
<body>
	<h2>로케일의 날짜와 시간 설정</h2>
	<hr>
	<%
		Locale locale = request.getLocale();
		String date = DateFormat.getDateTimeInstance(DateFormat.FULL, DateFormat.SHORT, locale).format(new Date());
	%>
	<h3>
		로케일의 날짜 형식 :
		<%=date%></h3>
</body>
</html>