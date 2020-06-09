<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String _id, _pw;
	%>
	
	<%
		_id = request.getParameter("id");
		_pw = request.getParameter("password");
	%>
	
	<h2>fo02.jsp페이지입니다.</h2>
	아이디 : <%= _id %>
	패스워드 : <%= _pw %>
</body>
</html>