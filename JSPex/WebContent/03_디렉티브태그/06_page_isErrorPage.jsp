<%@ page errorPage="06_page_isErrorPage_error.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>title</title>
</head>
<body>
	
	<%
		String str = null;
		out.println(str.toString());
		/* null값을 참조하려 했으므로 java.lang.NullPointerException 이 발생  */
	%>

</body>
</html>