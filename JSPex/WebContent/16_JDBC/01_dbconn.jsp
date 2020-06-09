<%@ page import="java.sql.*"%>
<%
	Connection conn = null;

	String url = "jdbc:mysql://localhost:3306/JSPexDB?serverTimezone=UTC";
	String user = "root";
	String password = "2323";

	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, password);
%>