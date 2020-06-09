<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
	<title>title</title>
</head>
<body>
	<jsp:useBean id="person" class="s04.com.dao.Person" scope="request"/>
	<jsp:setProperty name="person" property="id" value="20182005"/>
	<jsp:setProperty name="person" property="name" value="Sunghyuk Choi"/>
	<p>아이디 : <jsp:getProperty property="id" name="person"/>
	<p>이 름 : <jsp:getProperty property="name" name="person"/>	
</body>
</html>