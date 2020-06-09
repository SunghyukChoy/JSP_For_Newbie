<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>title</title>
</head>
<body>
	<%-- upload-2.jsp --%>
	<form name="fileform" method="post" enctype="multipart/form-data"
	action="upload-2_process.jsp">
	    <p>
	        이 름 : <input type="text" name="name1">
		제 목 : <input type="text" name="subject1">
		파 일 : <input type="file" name="filename1">
		</p>
		<p>
	        이 름 : <input type="text" name="name2">
		제 목 : <input type="text" name="subject2">
		파 일 : <input type="file" name="filename2">
		</p>
		<p>
	        이 름 : <input type="text" name="name3">
		제 목 : <input type="text" name="subject3">
		파 일 : <input type="file" name="filename3">
		</p>
		<p><input type="submit" value="파일 올리기"></p>
	</form>
</body>
</html>