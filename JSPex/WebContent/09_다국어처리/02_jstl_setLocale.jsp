<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestEncoding</title>
</head>
<body>
	<h2>setLocale</h2>
	<fieldset>
		<legend>사용법</legend>
		<pre>
			<code>
		&lt;fmt:requestEncoding value="문자 인코딩" /&gt;
		</code>
		</pre>
	</fieldset>
	<hr>

	<fmt:requestEncoding value="utf-8" />
	요청 파라미터 :
	<%= request.getParameter("id") %>

	<form action="#" method="post">
		<p>아이디
			 <input type="text" name="id">
		 	<input type="submit" value="전송">
		</p>
	</form>
</body>
</html>