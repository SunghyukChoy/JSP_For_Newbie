<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag2</title>
</head>
<body>
	Page Count is :
	<%-- 스크립틀릿 태그 --%>
	<%
		out.println(myMethod(0)); /* 전역 메소드 myMethod() 호출 */
	%>
	<%-- 선언문 태그 [메소드] --%>
	<%!public int myMethod(int count) { /* 전역 메소드 myMethod() 설절 */
		return ++count;
	}%>

</body>
</html>