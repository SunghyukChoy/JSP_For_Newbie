<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1>main.jsp 페이지 입니다.</h1>
	
	<jsp:forward page="sub.jsp" />
	<%-- sub.jsp 페이지로 넘어감 --%>
	
	<%-- url은 main.jsp이지만 sub.jsp 화면이 출력됨. --%>

</body>
</html>