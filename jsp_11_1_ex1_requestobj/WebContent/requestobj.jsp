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
		out.println("서버 : " + request.getServerName() + "<br />");
		out.println("포트 번호 : " + request.getServerPort() + "<br />");
		out.println("요청 방식 : " + request.getMethod() + "<br />");
		out.println("프로토콜 : " + request.getProtocol() + "<br />");
		out.println("URL : " + request.getRequestURL() + "<br />");
		out.println("URI : " + request.getRequestURI() + "<br />");
		
	%>
	
	<%-- 생성하지 않아도 자동으로 생성되는 내장객체 : request, response
		웹 브라우저를 통해 어떤 정보를 요청하는 것을 request라 하며 
		이러한 요청 정보는 request 객체가 관리한다.
		웹 브라우저의 요청에 응답하는 것을 response라 하며
		이러한 응답의 정보를 가지고 있는 객체를 response 객체라고 한다.
		 --%>

</body>
</html>