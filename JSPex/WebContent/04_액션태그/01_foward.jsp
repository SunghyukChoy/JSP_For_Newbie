<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>	
	<title>title</title>
</head>
<body>
	<h2>forward 액션 태그</h2>
	<hr>
	<%--
		액션 태그
		- 서버나 클라이언트에게 행동을 유도하는 명령 태그
		- 스크립트 태그, 주석, 디렉티브 태그와 같이 JSP 페이지를 구성하는 태그
		
		액션 태그의 기능
		- 페이지와 페이지 사이를 제어
		- 다른 페이지의 실행 결과를 현재 페이지에 표현
		- 자바 빈즈(JavaBeans) 등의 기능 제공
		
		액션 태그의 형식
		- XML 형식을 따름
		- 반드시 종료 태그(/>)가 있어야 함.
			<jsp: ... />
	 --%>
	 <%-- <jsp:forward page="02_forward_date.jsp"/>  --%>
	 <jsp:forward page="../03_디렉티브태그/02_page_import.jsp"/> 
	<%-- 포워드 되는 순간 현재 파일의 내용은 출력되지 않음(주소는 그대로, 내용은 바꿔치기). --%>
	<%-- forward 구문이 여러 개 있으면 먼저 코딩된 구문을 따름. --%>
	
	<p>-------------------------------
</body>
</html>