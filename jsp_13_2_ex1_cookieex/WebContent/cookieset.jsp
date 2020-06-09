<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<%
		Cookie cookie = new Cookie("cookieN", "cookieV");	// 서버에서 cookie 객체 생성 new Cookie("쿠키이름", "쿠키밸류")
		Cookie cookie2 = new Cookie("coffee", "good");
		Cookie cookie3 = new Cookie("cake", "better");
		cookie.setMaxAge(60*60);	//1시간	// setMaxAge() 메서드 서버에서 실행.
		response.addCookie(cookie);	// response 객체에 탑재
		response.addCookie(cookie2);
		response.addCookie(cookie3);		
	%>
	
	<a href="cookieget.jsp">cookie get</a>
	<!-- 하이퍼링크로 페이지 넘어가면. -->
	
	
</body>
</html>