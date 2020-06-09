<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>session6</title>
</head>
<body>
	<h3>------ 세션 삭제 전 ------</h3>
	<%
		String user_id = (String) session.getAttribute("userID");
		String user_pw = (String) session.getAttribute("userPW");
		
		out.println("설정된 세션 이름 userID : " + user_id + "<br>");
		out.println("설정된 세션 값 userPW : " + user_pw + "<br>");
		
		if(request.isRequestedSessionIdValid() == true) {
			out.print("세션이 유효합니다.");
		} else {
			out.print("세션이 유효하지 않습니다.");
		}
		
		session.invalidate();
	%>
	
	<h3>------ 세션 삭제 후 ------</h3>
	<%
		if(request.isRequestedSessionIdValid() == true) {
			out.print("세션이 유효합니다.");
		} else {
			out.print("세션이 유효하지 않습니다.");
		}
	%>
</body>
</html>