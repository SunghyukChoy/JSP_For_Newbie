<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>

	<title>title</title>
</head>
<body>
	<p>오늘의 날짜 및 시간</p>
	<p><%=(new java.util.Date()).toLocaleString()%></p>
</body>
</html>