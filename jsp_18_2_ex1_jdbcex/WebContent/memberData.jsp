<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
	<%!
		Connection connection;
		Statement statement;
		ResultSet resultSet;
	
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";	// db의 주소
		String uid = "scott";
		String upw = "tiger";
		String query = "select * from member";
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<%
		try{	// db와 관련된 작업은 try, catch로 묶어줌. 에러 날 수 있음. 빌드 안 됨.
			
			Class.forName(driver);	//oracle.jdbc.driver.OracleDriver. // 첫번째 : JDBC 드라이버를 메모리에 로드
			connection = DriverManager.getConnection(url, uid, upw);	//jdbc:oracle:thin:@localhost:1521:xe // db에 접근하는 Connection 객체 생성. 
			statement = connection.createStatement();	// Connection 객체로부터 쿼리문을 실행할 수 있는 Statement 객체 생성
			resultSet = statement.executeQuery(query);	//select * from member	// Statement 객체로부터 쿼리문을 실행시킨 결과값을 얻는 ResultSet 객체 생성 // ResultSet 객체에 정보들이 담아짐
			
			while(resultSet.next()){ // next() : 다음 레코드로 이동. BOF -> 첫번째 row 데이터. 다음 데이터가 있으면. 다음 데이터가 없을 때까지 반복
				String id = resultSet.getString("id");	// db의 컬럼.
				String pw = resultSet.getString("pw");
				String name = resultSet.getString("name");
				String phone = resultSet.getString("phone");
				
				out.println("아이디 : " + id + "<br/> 비밀번호 : " + pw + "<br/> 이름 : " + name + "<br/> 전화번호 : " + phone + "<br/>");
				out.println("<hr/>");
			}
			
		} catch(Exception e) {
		} finally {	// finally : 예외가 있든 없든 무조건 실행하는 구문
			try{ // 자원 해제. 생성했던 객체의 역순으로 해제
				if(resultSet != null) resultSet.close();
				if(statement != null) statement.close();
				if(connection != null) connection.close();
			} catch(Exception e){}
		}
	%>
	
</body>
</html>