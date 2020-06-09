<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>                   
<html>
<head>
  <title>Database SQL</title>
</head>
<body>
	<%@ include file="01_dbconn.jsp"%>
	<table width="300" border="1">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
		</tr>
		<%
			ResultSet rs = null;
			Statement stmt = null;

			try {
				String sql = "select * from member";
				stmt = conn.createStatement( );
				rs = stmt.executeQuery(sql);

				while ( rs.next( ) ) {
					String id = rs.getString("id");
					String pw = rs.getString("passwd");
					String name = rs.getString("name");
		%>
		<tr>
			<td><%=id%></td>
			<td><%=pw%></td>
			<td><%=name%></td>
		</tr>
		<%
			}
			} catch ( SQLException ex ) {
				out.println("Member 테이블 호출이 실패했습니다.<br>");
				out.println("SQLException: " + ex.getMessage( ));
			} finally {
				if ( rs != null )
					rs.close( );
				if ( stmt != null )
					stmt.close( );
				if ( conn != null )
					conn.close( );
			}
		%>
	</table>
</body>
</html>
