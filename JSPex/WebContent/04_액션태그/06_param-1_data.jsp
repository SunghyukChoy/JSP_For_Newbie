<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>title</title>
</head>
<body>
	<p>
		아이디 :
		<%=request.getParameter("id") %>
		
		<%
			String name = request.getParameter("name");
		%>	
	<p>
		이 름 :
		
		<%=java.net.URLDecoder.decode(name)%>
		<%-- 인코딩 된 한글은 다시 디코딩 해줌. 디코딩 하는 코드 --%>
</body>
</html>