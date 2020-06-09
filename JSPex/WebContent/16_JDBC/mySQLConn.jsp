<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>

<%
	try {
		// 1. JDBC 드라이버 설치. 반드시 들어가야 함
		// mysql-connector-java-8.0.11.jar 파일을 WEB-INF >> lib 폴더에 추가

		// 2. 설치되어있는 드라이버 로드. mysql 8 버전의 경우 cj 들어가야 함.
		Class.forName("com.mysql.cj.jdbc.Driver");

		// 3. 드라이버를 사용해서 디비 연결 아이디/비밀번호/디비 주소
		// mysql-connector-java 6.XX 이상 사용 시 디비 접근 주소(서버시간 인식 오류)
		// String dbURL = "jdbc:mysql://localhost:3306/JSPexDB";
		// mysql 8 버전에서 서버 타임 반드시 표기 ?serverTimezone=UTC
		String dbURL = "jdbc:mysql://localhost:3306/JSPexDB?serverTimezone=UTC";
		String dbID = "root";
		String dbPW = "2323";

		Connection con = DriverManager.getConnection(dbURL, dbID, dbPW);

		System.out.println("연결정보 : " + con);
		System.out.println("연결정보(toString) : " + con.toString());
%>
<%="<h2>연결정보 : " + con%>
<%="<h2>연결정보(toString) : " + con.toString()%>
<%="<h1>연결 성공"%>
<%
	} catch (ClassNotFoundException e) {
		// 드라이버를 불러올 때 문제 발생
		System.out.println("드라이버 로드 실패");
		e.printStackTrace();
	} catch (SQLException e) {
		// DB 접속 실패
		System.out.println("DB 접속 실패");
		e.printStackTrace();
	}
%>
