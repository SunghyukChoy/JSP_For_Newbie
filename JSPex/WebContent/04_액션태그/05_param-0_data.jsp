<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>title</title>
</head>
<body>
	Today : <%= request.getParameter("date") %>
	<%-- request : 브라우저로부터 요청이 발생하면...getParameter : 매개변수를 가져와라. --%>
	
	<% String value = request.getParameter("product"); %>
	<% out.println("<br>"); %>
		
	<% String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
	%>
	
	<%=num1 %> + <%=num2 %> = 
	<%= request.getParameter("sum") %>	
	
	<% out.println("<br>"); %>
	
	상품 : <%= value %>
</body>
</html>