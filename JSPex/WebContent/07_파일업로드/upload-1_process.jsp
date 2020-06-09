<%-- upload-1_process.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%
	MultipartRequest multi = 
		new MultipartRequest(request, "C:\\upload", 5 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());
									/* 업로드 위치. 서버의 업로드 파일 저장 위치. */	
												/* 1024*1024 = 1MB.	1024*1024*5 = 5MB */
												/* 업로드 위치와 업로드 크기만 설정해주면 됨. 나머지는 건드릴 필요 없음. */
														
	
	Enumeration params = multi.getParameterNames();
	
	while(params.hasMoreElements()) {
		String name = (String) params.nextElement();
		String value = multi.getParameter(name);
		out.println(name + " = " + value + "<br>");
	}
	
	out.println("-----------------------------------<br>");
	
	Enumeration files = multi.getFileNames();
	
	while(files.hasMoreElements()) {
		String name = (String) files.nextElement();
		String filename = multi.getFilesystemName(name);
		String original = multi.getOriginalFileName(name);
		String type = multi.getContentType(name);
		File file = multi.getFile(name);		
		
		out.println("요청 파라미터 이름 : " + name + "<br>");
		out.println("실제 파일 이름 : " + original + "<br>");
		out.println("저장 파일 이름 : " + filename + "<br>");
		out.println("파일 콘텐츠 유형 : " + type + "<br>");
		
		if(file != null) {
			out.println("파일 크기 : " + file.length());
			out.println("<br>");
		}		
	}
%>
