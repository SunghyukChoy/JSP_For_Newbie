<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>내장 객체</title>
</head>
<body>
	<h2>01-1_request.jsp</h2>
	<hr>
	<form action="01-2_process.jsp" method="post">
			<%-- action : form 태그의 정보가 전달되는 곳. --%>
			<%-- post : url을 숨김 처리로 데이터 전송(회원가입 등 개인정보가 있는 정보는 post 방식 씀.)
				get : url을 노출된 상태로 데이터 전송(검색어 등은 노출되어도 상관없으므로 get 방식 씀.) --%>
		<p>
			이름 <input type="text" name="name">
				<%-- name 속성의 값 "name" : db와 연동되는 부분.  --%>
				 <input type="submit" value="전송">
				 <%-- value : 보여지는 텍스트. --%>
		</p>
	</form>
</body>
</html>