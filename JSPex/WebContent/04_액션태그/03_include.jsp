<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>title</title>
</head>
<body>
	<h2>include 액션 태그</h2>
	<jsp:include page="04_include_date.jsp" flush="false" />
	<%-- flush="true". 요청 시 buffer의 내용을 비워줌. 기본값 false. 동적 페이지 작성 시 false값을 씀.--%>
	<p>---------------------------
</body>
</html>