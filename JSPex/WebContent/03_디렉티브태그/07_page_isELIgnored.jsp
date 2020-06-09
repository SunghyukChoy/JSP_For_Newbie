<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page isELIgnored="true" %> 
<%--  <%@ page isELIgnored="false" %> --%>
<%--
	 isELIgnored
	 - 현재 JSP 페이지의 표현 언어(Expression Language) 사용 여부 설정
	 - 기본값 : false
	 - 표현식 ${...}을 사용 --> 동적 텍스트 처리
 --%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>title</title>
</head>
<body>
	<%
		request.setAttribute("RequestAttribute", "request 내장 객체");
		/* 클라이언트로부터 요청(request)이 들어오면 속성값을 설정함(setAttribute).
			RequestAttribute에 "request 내장 객체"라는 값을 넣음*/
	%>
	
	<%-- JSP의 동적페이지 표현식  --%>
	<%-- isELIgnored=true로 설정하면 정적 텍스트로 처리됨. --%> ??? 확인해보기.
	${requestScope.RequestAttribute}
</body>
</html>