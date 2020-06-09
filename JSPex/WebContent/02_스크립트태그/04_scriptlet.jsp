<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	 <%-- <%
		int sum2 = a + b;
		out.println("sum2 = " + sum2);
	%> 	 --%>

	<%
		int a = 2;
		int b = 3;
		int sum = a + b;
		out.println("sum = " + sum + "<br>");
	%>
	<%-- 스크립틀릿 태그에도 변수를 선언할 수 있다. 지역 변수로 선언됨. 
		 다른 이전의 스크립틀릿 태그에서는 사용할 수 없음. --%>
	<%
		int sum3 = a + b;
		out.println("sum = " + sum + "<br>");
		out.println("sum3 = " + sum3);
		
	%>

</body>
</html>