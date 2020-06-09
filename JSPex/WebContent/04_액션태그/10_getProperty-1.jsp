<%@ page contentType="text/html; charset=UTF-8"%>

<html>
<head>	
	<title>title</title>
</head>
<body>
	<jsp:useBean id="person" class="s04.com.dao.Person" scope="request"/>
	<p>아이디 : <jsp:getProperty name="person" property="id"/>
				<%-- getProperty : getter() 메소드 역할 --%>
	<p>이 름 : <jsp:getProperty name="person" property="name"/>
</body>
</html>