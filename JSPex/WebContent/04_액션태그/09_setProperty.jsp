<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>title</title>
</head>
<body>
	<jsp:useBean id="person" class="s04.com.dao.Person" scope="request"/>
	<jsp:setProperty name="person" property="id" value="20182005"/>
	<%-- setProperty : Setter() 메소드 역할 --%>
								<%-- property : 참조하는 java 파일에서의 변수 --%>
	<jsp:setProperty name="person" property="name" value="최성혁"/>
	<p>아이디 : <% out.println(person.getId()); %>
	<p>이 름 : <% out.println(person.getName()); %>
</body>
</html>