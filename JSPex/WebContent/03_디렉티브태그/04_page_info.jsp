<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Directives Tag</title>
</head>
<body>
	<%-- 출력되지 않는 코드. 개발자 협업 코드. info 속성은 주석문의 역할과 똑같음. --%>
	<%@ page info="Date 클래스를 이용한 날짜 출력하기" %>
	오늘 : <%=new java.util.Date()%>
</body>
</html>