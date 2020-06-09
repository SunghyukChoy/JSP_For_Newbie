<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>session4</title>
</head>
<body>
	<h3>------ 세션 삭제 전 ------</h3>
	<%
		String user_id = (String) session.getAttribute("userID");
		String user_pw = (String) session.getAttribute("userPW");
		out.println("설정된 세션 이름 userID : " + user_id + "<br>");
		out.println("설정된 세션 값 userPW : " + user_pw + "<br>"	);
		
		session.removeAttribute("userID");
	%>
	
	<h3>------ 세션 삭제 후 ------</h3>
	<%
		user_id = (String) session.getAttribute("userID");
		user_pw = (String) session.getAttribute("userPW");
		out.println("설정된 세션 이름 userID : " + user_id + "<br>");
		out.println("설정된 세션 값 userPW : " + user_pw + "<br>");
	%>
</body>
</html>