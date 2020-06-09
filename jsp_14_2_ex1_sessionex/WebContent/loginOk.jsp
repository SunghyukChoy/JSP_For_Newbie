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
		String id, pw;
	%>
	<%
		id = request.getParameter("formId");	// formId의 값을 가져와 변수 id에 저장 
		pw = request.getParameter("formPw");	// formPw의 값을 가져와 변수 pw에 저장
		
		if((id.equals("abcde") && pw.equals("12345")) || id.equals("chvrches") && pw.equals("123")) {	
			session.setAttribute("sessionN", id);	
			response.sendRedirect("welcome.jsp");
		} else {
			response.sendRedirect("login.html");
		}
	%>

</body>
</html>