<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>title</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String gender = request.getParameter("gender");
		String hobby1 = request.getParameter("hobby1");
		String hobby2 = request.getParameter("hobby2");
		String hobby3 = request.getParameter("hobby3");
		String comment = request.getParameter("comment");
	%>
	<p>아이디 : <%=id%></p>
	<p>비밀번호 : <%=pass%></p>
	<p>이름 : <%=name%></p>
	<p>연락처 : <%=phone1%>-<%=phone2%>-<%=phone3%></p>
	<p>성별 : <%=gender%></p>
	<p>취미 : <%=hobby1%> <%=hobby2%> <%=hobby3%></p>
	<p>가입인사 : <%=comment%></p>
</body>
</html>