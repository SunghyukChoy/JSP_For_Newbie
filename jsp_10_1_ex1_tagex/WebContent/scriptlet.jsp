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
		int i = 0;
		while (true) {
			i++;
			out.println("2*" + i + "=" + (2 * i) + "<br/>");
	%>
	<%-- 스크립트릿 : <% java 코드기술 %>, JSP페이지에서 JAVA 언어를 사용하기 위한 요소 --%>
	
	===============
	<br />
	<%
		if (i >= 9) {
				break;
			}
		}
	%>

	<%
		for (int j = 2; j <= 9; j++) {
			out.println(j + "단" + "<br>");
			for (int k = 1; k <= 9; k++) {
				out.println(j + "*" + k + "=" + (j * k) + "<br>");
			}
	%>
	============
	<br />

	<%
		}
	%>

</body>
</html>