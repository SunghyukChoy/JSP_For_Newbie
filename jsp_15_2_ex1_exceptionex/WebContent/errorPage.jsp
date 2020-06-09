<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true"%>
<%-- isErrorPage 속성의 디폴트값 : false. true로 설정해야 exception 객체 참조 가능. --%>
<% response.setStatus(200); %>
<%-- setStatus()에서 200은 정상적인 페이지라는 것을 의미. 
웹서버에서 지정해주지 않으면 예외가 발생한 페이지로 (본 예제에서는 500 에러 페이지) 인식할 수 있으므로. --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	에러 발생<br />
	<%= exception.getMessage() %>
</body>
</html>