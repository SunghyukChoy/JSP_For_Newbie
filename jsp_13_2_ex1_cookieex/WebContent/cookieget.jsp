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
		Cookie[] cookies = request.getCookies();
								/* 쿠키 변수들을 얻어와 배열로 저장함. */
		
		for(int i=0; i<cookies.length; i++) {
			String str = cookies[i].getName();
			// out.println(str); // cookies[0]은 JSESSIONID 	
			/*  if(str.equals("cookieN")) {
				out.println("cookies[" + i + "] name : " + cookies[i].getName() + "<br />");
				out.println("cookies[" + i + "] value : " + cookies[i].getValue() + "<br />");
				out.println("=====================<br />");
			} */
			out.println("cookies[" + i + "] name : " + cookies[i].getName() + "<br/>" );
			out.println("cookies[" + i + "] value : " + cookies[i].getValue() + "<br/>" );
		}
		
	%>

<a href="cookiedel.jsp">cookie delete</a>

</body>
</html>

