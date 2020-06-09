<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="student" class="com.javalec.ex.Student" scope="page" />
		<%-- id : bean 이름. java에서 객체 생성 시의 변수 이름 같은 것. 참조하는 주소 class: 클래스의 위치. 패키지명까지 기재. 
			scope : 범위.  --%>
		<%-- Bean이란 java언어의 속성과 메소드로 이루어진 클래스 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:setProperty name="student" property="name" value="홍길동"/>					
	<jsp:setProperty name="student" property="age" value="13"/>
	<jsp:setProperty name="student" property="grade" value="6"/>
	<jsp:setProperty name="student" property="studentNum" value="7"/>
					<%-- name : bean 이름. property : 속성 이름. value : 속성값 --%>
	
	이름 : <jsp:getProperty name="student" property="name" /><br />
	나이 : <jsp:getProperty name="student" property="age" /><br />
	학년 : <jsp:getProperty name="student" property="grade" /><br />
	번호 : <jsp:getProperty name="student" property="studentNum" /><br />


</body>
</html>