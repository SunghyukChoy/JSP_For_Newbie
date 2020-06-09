<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage.jsp" %>    
<jsp:useBean id="student" class="com.javalec.ex.Student" scope="page"/>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:setProperty name="student" property="name" value="홍길동"></jsp:setProperty>	
	<jsp:setProperty name="student" property="age" value="22"/>
	<jsp:setProperty property="grade" name="student" value="3"/>	
	<jsp:setProperty name="student" property="studentNum" value="040035" />
	<%-- value에 자료형 맞지 않는 값 넣어 에러 발생 시켜 보기 --%>
	
	이름 : <jsp:getProperty name="student" property="name"></jsp:getProperty><br/>
	나이 : <jsp:getProperty name="student" property="age"></jsp:getProperty><br/>
	학년 : <jsp:getProperty name="student" property="grade"></jsp:getProperty><br/>
	학번 : <jsp:getProperty name="student" property="studentNum"></jsp:getProperty><br/>
	
</body>
</html>