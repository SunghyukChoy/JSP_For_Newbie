<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<jsp:forward page="forward_param.jsp">
		<jsp:param name="id" value="abcdef" />
		<jsp:param name="password" value="1234" />
	</jsp:forward>
	<%-- 페이지를 넘기는데, param 태그를 이용하여 name과 value를 갖고 넘김. --%>
	<%-- forward, param 모두 닫는 태그 필요함. --%>
</body>
</html>