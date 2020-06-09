<%@ page isErrorPage="true"%>
<%-- isErrorPage="true". 현재 페이지가 예외 처리 페이지라는 것을 명시하는 것. 
	exception 객체를 사용할 수 있고 예외 처리에 대한 정보를 얻을 수 있음. --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>title</title>
</head>
<body>
	<h4>에러가 발생되었습니다.</h4>
	<h5>exception 내장 객체 변수</h5>
	<%
		exception.printStackTrace(new java.io.PrintWriter(out));
	%>
</body>
</html>