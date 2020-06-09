<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%!
		int i = 10;
		String str = "ABCDE";
	%>
	<%-- jsp페이지 내에서 사용되는 변수 또는 메소드 선언 시 사용. 전역변수, 전역메소드 --%>
	
	<%!
		public int sum(int a, int b) {
			return a+b;
		}
	%>
	
	<%
		out.println("i = " + i + "<br />");
		out.println("str = " + str + "<br />");
		out.println("sum = " + sum(1,5) + "<br />");
	%>
	
</body>
</html>