<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>title</title>
</head>
<body>
	<h3>액션 태그</h3>
	<jsp:forward page="06_param-1_data.jsp">
		<jsp:param name="id" value="admin"/>
		<jsp:param name="name" value='<%=java.net.URLEncoder.encode("관리자")%>' />		
	</jsp:forward>
									<%-- 한글은 반드시 인코딩 해주어야 함. 한글을 인코딩 하는 코드 --%>
									<%-- jsp 태그 안에 어떠한 주석도 넣지 않는다. --%>	
	<p>Java Server Page
</body>
</html>