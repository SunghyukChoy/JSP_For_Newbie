<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- param : forward 및 include 태그에 데이터 전달을 목적으로 사용하는 태그. 이름과 값으로 이루어져 있음 --%>
	<%!
		String id, pw;
	%>

	<%
		id = request.getParameter("id");
		pw = request.getParameter("password");
	%>	
		<%-- forward.jsp 페이지의 forward 태그에서 넘어온 name과 value.
			getParameter()에서 "id"는 forward.jsp 페이지의 param 태그에서 name="id". "id"에는 value의 값이 담겨있음. --%>
	
	<h1>forward_param.jsp 입니다.</h1>
	아이디 : <%= id %><br />
	비밀번호 : <%= pw %>

</body>
</html>