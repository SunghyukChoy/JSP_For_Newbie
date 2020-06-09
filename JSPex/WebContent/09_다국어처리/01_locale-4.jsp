<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Locale,java.util.Date"%>
<%@ page import="java.text.NumberFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Locale Number</title>
</head>
<body>
	<h2>로케일의 통화와 숫자 설정</h2>
	<hr>
	<%
		Locale locale = request.getLocale();
		NumberFormat currency = NumberFormat.getCurrencyInstance(locale);
		NumberFormat percentage = NumberFormat.getPercentInstance(locale);

		String fcurrency = currency.format(1234567);
		String fpercentage = percentage.format(0.25);
	%>

	<h3>
		로케일의 통화 형식 :
		<%=fcurrency%></h3>
	<h3>
		로케일의 비율 형식 :
		<%=fpercentage%></h3>
</body>
</html>