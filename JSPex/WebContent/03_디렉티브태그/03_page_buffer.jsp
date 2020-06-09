<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Directives Tag</title>
</head>
<body>
	<%-- buffer : 임시 저장 공간. 메모리(캐시메모리).  --%>
	<%-- 16kb의 임시 저장 공간을 확보해라. 16kb의 공간이 채워지면 출력해라. 기본값은 8kb. --%>
	<%@ page buffer="16kb" %>
	오늘 : <%=new java.util.Date()%>
</body>
</html>