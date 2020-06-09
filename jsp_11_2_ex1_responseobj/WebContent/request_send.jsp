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
	int age;
%>

<%
	String str = request.getParameter("age");
	age = Integer.parseInt(str);	
		/* str을 정수형으로 변환. */
	
	if( age >= 20){
		response.sendRedirect("pass.jsp?age=" + age);
		/* "pass.jsp?age=" + age : age 값에 age를 넣어서 보냄*/
	} else {
		response.sendRedirect("ng.jsp?age=" + age);
	}
	
	
%>

<%= age %>

</body>
</html>