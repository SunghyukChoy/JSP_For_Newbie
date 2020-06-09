<%@ page contentType="text/html; charset=UTF-8"%>
<html lang="ko">
<head>	
	<title>title</title>
</head>
<body>
	<jsp:useBean id="person" class="s04.com.dao.Person" scope="request"/>
	<p>아이디 : <%=person.getId() %>
	<p>이 름 : <%=person.getName() %>
</body>
</html>