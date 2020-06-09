<%-- 
	<%@ taglib uri="경로" prefix="태그식별자" %>
	- uri : 사용자가 정의한 태그의 설정 정보를 가진 경로의 주소
	- uri 속성 값을 그대로 사용하면 복잡하기 때문에 prefix 속성 값이 대신 식별할 수 있도록 함.
	
	JSTL 태그
	- JSP 태그 모음
	- 자주 사용하는 핵심 기능 제공
	- 반복문, 조건문, XML, 문서 조작, SQL 조작을 위한 태그 지원
	- WebConten/WEB-INF/lib/jstl.jar 라이브러리 파일이 존재하여야 함.
 --%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%-- tag library.  --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>title</title>
</head>
<body>
	<%-- c:는 위의 core 태그를 의미 --%>
	<c:forEach var="k" begin="1" end="10" step="1">
		<c:out value="${k}"/>
		<%-- out -> println. 출력문. --%>
	</c:forEach>
</body>
</html>