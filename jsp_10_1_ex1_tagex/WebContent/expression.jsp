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
		String str = "abc";
		
		private int sum(int a, int b) {
			return a+b;
		}
	%>
	
	<%= i %><br />
	<%= str %><br />
	<%= sum(1, 5) %>
	
	<%-- jsp페이지 내애세 사용되는 변수의 값 또는 메소드 호출 결과값을 출력.
		결과값은 String 타입, ';' 사용할 수 없음. --%>

</body>
</html>