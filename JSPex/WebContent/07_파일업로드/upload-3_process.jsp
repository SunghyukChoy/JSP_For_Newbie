<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="org.apache.commons.fileupload.*" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>title</title>
</head>
<body>
	<%-- upload-3_process.jsp --%>
	<%
		String fileUploadPath = "D:\\upload";
		DiskFileUpload upload = new DiskFileUpload();
		
		List items = upload.parseRequest(request);
							/* parse : 특정한 데이터만 형변환하여 가져옴. */
		Iterator params = items.iterator();
		/* Iterator : 반복자라는 뜻. 데이터를 반복적으로 처리하기 위해 사용하는 클래스. */
		
		while(params.hasNext()) {
			FileItem fileItem = (FileItem) params.next();
			if(!fileItem.isFormField()) {
				String fileName = fileItem.getName();
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
														/* "\\"는 D:\\를 찾는 것. 경로를 찾는다는 것. 거기에 +1은 다음 글자인 u를 찾는 것. */		
				File file = new File(fileUploadPath + "/" + fileName);
				fileItem.write(file);
						
			}
		}
	%>
</body>
</html>