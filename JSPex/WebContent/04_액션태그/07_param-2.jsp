<%@ page contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>title</title>
</head>
<body>
	<h3>액션 태그</h3>
	<hr>
	<jsp:include page="07_param-2_data.jsp">
		<jsp:param name="title" value='<%=java.net.URLEncoder.encode("오늘의 날짜와 시각") %>'/>
		<jsp:param name="date" value="<%=java.util.Calendar.getInstance().getTime()%>"/>
	</jsp:include>
</body>
</html>