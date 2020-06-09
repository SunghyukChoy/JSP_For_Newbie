<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>	
	<title>Action Tag</title>
</head>
<body>
	<%-- 
		자바빈즈(Javabeans)
		- 프로그램의 효율성과 생산성을 향상시키기 위해 화면의 출력부분과 데이터를 처리하는 로직부분을 구분해서 작성하는 기법	
		- 로직 부분의 코드에 자바빈즈 클래스를 사용
		
		자바빈즈의 흐름
		!) 웹 브라우저가 JSP 페이지에 요청 전송
		2) JSP 페이지는 자바빈즈와 통신
		3) 자바빈즈가 데이터베이스에 연결
		4) JSP 페이지는 브라우저에 응답
		
		자바빈즈 작성 규칙
		1) 자바 클래스는 java.io.Serializable 인터페이스 구현
		2) 인수가 없는 기본 생성자 존재
		3) 모든 멤버 변수인 프로퍼티는 private 접근 지정자로 설정
		4) 모든 멤버 변수인 프로퍼티는 Getter()/Setter() 메소드가 존재해야 함
		
		자바빈즈 작성 예
		package com.wr;
		import java.io.Serializable;
		
		public class JBean implements java.io.Serializable {
			// 멤버 변수(프로퍼티) 정의
			private String name;
			private int uid;
			
			// 인수 없는 기본 생성자
			public JBean() {
			}
			
			// Getter()/Setter()
			public String getName() {
				return name;
			}
			public void setName(String name) {
				this.name = name;
			}
			
			public int getUid() {
				return uid;
			}
			public void setUid(int uid) {
				this.uid = uid;
			}
		}
		
		useBean 액션 태그
		- 실제 자바 클래스를 선언하고 초기화하는 태그
		- 설정된 id 속성과 scope 속성을 기본으로 자바빈즈의 객체 검색
		- 객체가 없으면 빈 객체를 생성
		
		<jsp:useBean id="자바빈즈식별이름" class="자바빈즈이름" scope="page"/>
		
		*useBean 액션 태그
		<jsp:useBean id="mb" class="com.MBean" scope="page"/>
		--> Java 코드로 변경한다면?
		MBean mb = (MBean) request.getAttribute("mb");
		if(mb == null) {
			mb = new MBean();
			request.setAttribute("mb",mb);
		}
		
	--%> 
	<jsp:useBean id="date" class="java.util.Date"/>							
	<p><%
		out.println("오늘의 날짜 및 시각");
	%>
	<p><%=date %>
</body>
</html>