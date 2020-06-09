<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>title</title>
</head>
<body>
	<h3>param-0.jsp</h3>
	<hr>
	<%-- 
		액션 태그 : param
		- 현재 JSP 페이지에서 다른 페이지에 정보를 전달하는 태그
		- 단독으로 사용 불가능
		- <jsp:forward> 또는 <jsp:include> 태그의 내부에 사용
		- 다른 페이지에 여러 개의 정보를 전송해야 한다면 다중 param 액션 태그도 사용 가능
		
		형식 예
		<jsp:forward page="파일명">
			<jsp:param value="매개변수값" name="매개변수명"/>
			<jsp:param value="매개변수값" name="매개변수명"/>
			<jsp:param value="매개변수값" name="매개변수명"/>
		</jsp:forward>
	 --%>
	 
	<% String product = "monitor"; %>
	<%! 
		int num1 = 2, num2 = 4;
		int sum(int a, int b) {
		int sum = a + b;
		return sum;
	}
	%>
	<jsp:include page="05_param-0_data.jsp">
		<jsp:param value="<%=new java.util.Date()%>" name="date"/>
		<jsp:param value="<%=new java.util.Date()%>" name="date"/>
		
		<jsp:param value="<%= product %>" name="product"/>
		
		<jsp:param value="<%=num1 %>" name="num1"/>
		<jsp:param value="<%=num2 %>" name="num2"/>
		<jsp:param value="<%= sum(num1,num2) %>" name="sum"/>
		
		
	</jsp:include>
		<p>Java Server Page</p>
</body>
</html>