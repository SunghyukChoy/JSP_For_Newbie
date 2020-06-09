<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%-- 에러 발생 시 속성값으로 페이지를 넘김. --%>
<%@ page errorPage="05_page_errorPage_error.jsp" %>	
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>
	<%
		String str = null;
		/* str 변수에 값 없음. */
		out.println(str.toString());
		/* 값이 없으므로 toString() 호출 불가능. 오류 발생. */
		/* null값을 참조하려 했으므로 java.lang.NullPointerException 이 발생 */


	%>
</body>
</html>