<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- param : forward �� include �±׿� ������ ������ �������� ����ϴ� �±�. �̸��� ������ �̷���� ���� --%>
	<%!
		String id, pw;
	%>

	<%
		id = request.getParameter("id");
		pw = request.getParameter("password");
	%>	
		<%-- forward.jsp �������� forward �±׿��� �Ѿ�� name�� value.
			getParameter()���� "id"�� forward.jsp �������� param �±׿��� name="id". "id"���� value�� ���� �������. --%>
	
	<h1>forward_param.jsp �Դϴ�.</h1>
	���̵� : <%= id %><br />
	��й�ȣ : <%= pw %>

</body>
</html>