<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
  <title>Database SQL</title>
</head>
<body>
	<%@ include file="01_dbconn.jsp"%>
	<%
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");

		/* 동적인 쿼리에 사용
		    하나의 객체로 여러 번의 쿼리를 실행할 수 있음
		    1) 동일한 쿼리문을 특정 값만 바꾸어서 여러 번 실행해야 할 때
	      2) 매개변수가 많아서 쿼리문을 정리해야 할 때
		*/
		PreparedStatement pstmt = null;

		try {
			// 쿼리문에 정해지지 않은 값은 물음표(?)로 표시해서 사용
			String sql = "insert into member(id, passwd, name) values(?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);      // 정해지지 않은 첫번째 ? 
			pstmt.setString(2, passwd);  // 정해지지 않은 두번째 ?
			pstmt.setString(3, name);    // 정해지지 않은 세번째 ?
			pstmt.executeUpdate( );
			out.println("Member 테이블  삽입이 성공했습니다.");
		} catch ( SQLException ex ) {
			out.println("Member 테이블 삽입이 실패했습니다.<br>");
			out.println("SQLException: " + ex.getMessage( ));
		} finally {
			if ( pstmt != null )
				pstmt.close( );
			if ( conn != null )
				conn.close( );
		}
	%>
</body>
</html>
