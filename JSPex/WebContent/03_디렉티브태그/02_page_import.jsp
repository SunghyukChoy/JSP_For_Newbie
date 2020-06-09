<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- contentType=charset=UTF-8로 미설정 시 기본값인  ISO-8859-1로 설정되기 때문에 한글이 깨짐.
    contentType에서 UTF-8로 설정해 주거나 pageEncoding 값을 UTF-8로 설정해주어야 함 --%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Directives Tag</title>
</head>
<body>
	<%-- 디렉티브 태그(=지시자) --%>
	<%-- page 설정을 지시함. --%>
	<%@ page import="java.util.Date" %>				
	오늘 : <%=new Date() + "<br>"%>
	
	<%! Date today = new Date(); %>		
	today : <%= today %>
</body>
</html>