<%@ page contentType="text/html; charset=UTF-8"%>

<html>
<head>

	<title>title</title>
</head>
<body>
	<jsp:useBean id="person" class="s04.com.dao.Person" scope="request"/>
	<p>아이디 : <%=person.getId() %>
	<p>이 름 : <%=person.getName() %>
	
	<%
		person.setId(20182005);
		person.setName("Sunghyuk Choi");
	%>	
	
	<jsp:include page="08_useBean-3.jsp"></jsp:include>
</body>
</html>