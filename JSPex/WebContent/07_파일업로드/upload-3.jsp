<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>title</title>
</head>
<body>
	<%-- upload-3.jsp --%>
	<form action="upload-3_process.jsp" method="post" enctype="multipart/form-data">
		<p>파 일 : <input type="file" name="filename"></p>
		<p><input type="submit" value="파일 올리기"></p>		
	</form>
</body>
</html>