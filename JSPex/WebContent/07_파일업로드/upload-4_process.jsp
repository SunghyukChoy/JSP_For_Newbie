<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>title</title>
</head>
<body>
	<%-- upload-4_process.jsp --%>
	<%
		String path = "D:\\upload";
	
		DiskFileUpload upload = new DiskFileUpload();
		
		upload.setSizeMax(1000000);	// 1MB. 1000000  / (1024^2) = 1MB.
		upload.setSizeThreshold(4096); // 로딩할 때 저장 가능한 사이즈. 기본값 10*1024KB
		upload.setRepositoryPath(path);	// 저장 경로.
		
		List items = upload.parseRequest(request);
							/* parse : 특정한 데이터만 형변환하여 가져옴. */
		Iterator params = items.iterator();
		/* Iterator : 반복자라는 뜻. 데이터를 반복적으로 처리하기 위해 사용하는 클래스. */
		
		while(params.hasNext()) {
			FileItem item = (FileItem) params.next();
			
			if(item.isFormField()) {
				String name = item.getFieldName();
				String value = item.getString("utf-8");
				out.println(name + "=" + value + "<br>");
			} else {
				String fileFieldName = item.getFieldName();
				String fileName = item.getName();
				String contentType = item.getContentType();
				
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
				long fileSize = item.getSize();
				
				File file = new File(path + "/" + fileName);
				item.write(file);
				
				out.println("------------------------------------<br>");
				out.println("요청 파라미터 이름 : " + fileFieldName + "<br>");
				out.println("저장 파일 이름 : " + fileName + "<br>");
				out.println("파일 컨텐츠 유형 : " + contentType + "<br>");
				out.println("파일 크기 " + fileSize + "<br>");				
				
			}
		}
	%>
</body>
</html>