<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<%
		Cookie cookie = new Cookie("cookieN", "cookieV");	// �������� cookie ��ü ���� new Cookie("��Ű�̸�", "��Ű���")
		Cookie cookie2 = new Cookie("coffee", "good");
		Cookie cookie3 = new Cookie("cake", "better");
		cookie.setMaxAge(60*60);	//1�ð�	// setMaxAge() �޼��� �������� ����.
		response.addCookie(cookie);	// response ��ü�� ž��
		response.addCookie(cookie2);
		response.addCookie(cookie3);		
	%>
	
	<a href="cookieget.jsp">cookie get</a>
	<!-- �����۸�ũ�� ������ �Ѿ��. -->
	
	
</body>
</html>