<%@page import="java.util.Enumeration"%>
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
		Enumeration enumeration = session.getAttributeNames();
		int i = 0;
		while(enumeration.hasMoreElements()) { 
			/* enumeration에 요소가 있으면 while문 실행. i 값 1 증가. 아래의 if 문 실행 안 됨.
			while 문 실행 시 아래의 출력문 출력. */
			i++;
			
			String sName = enumeration.nextElement().toString();
			String sValue = (String)session.getAttribute(sName);
			
			out.println("sName : " + sName + "<br />");
			out.println("sValue : " + sValue + "<br />");
		}
		
		
		
		if(i == 0) out.println("해당 세션이 삭제 되었습니다.");
		
	%>

</body>
</html>