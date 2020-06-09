<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>쿼리문 실행</title>
</head>
<body>
	<h2>&lt;sql:update&gt; 태그로 DELETE 쿼리문 실행</h2>
	<hr>
	<form method="post" action="07-2_sql_process.jsp">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="passwd"></p>
		<p><input type="submit" value="전송"></p>
	</form>
</body>
</html>