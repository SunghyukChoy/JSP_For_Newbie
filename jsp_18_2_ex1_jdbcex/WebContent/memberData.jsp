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
		String url = "jdbc:oracle:thin:@localhost:1521:xe";	// db�� �ּ�
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
		try{	// db�� ���õ� �۾��� try, catch�� ������. ���� �� �� ����. ���� �� ��.
			
			Class.forName(driver);	//oracle.jdbc.driver.OracleDriver. // ù��° : JDBC ����̹��� �޸𸮿� �ε�
			connection = DriverManager.getConnection(url, uid, upw);	//jdbc:oracle:thin:@localhost:1521:xe // db�� �����ϴ� Connection ��ü ����. 
			statement = connection.createStatement();	// Connection ��ü�κ��� �������� ������ �� �ִ� Statement ��ü ����
			resultSet = statement.executeQuery(query);	//select * from member	// Statement ��ü�κ��� �������� �����Ų ������� ��� ResultSet ��ü ���� // ResultSet ��ü�� �������� �����
			
			while(resultSet.next()){ // next() : ���� ���ڵ�� �̵�. BOF -> ù��° row ������. ���� �����Ͱ� ������. ���� �����Ͱ� ���� ������ �ݺ�
				String id = resultSet.getString("id");	// db�� �÷�.
				String pw = resultSet.getString("pw");
				String name = resultSet.getString("name");
				String phone = resultSet.getString("phone");
				
				out.println("���̵� : " + id + "<br/> ��й�ȣ : " + pw + "<br/> �̸� : " + name + "<br/> ��ȭ��ȣ : " + phone + "<br/>");
				out.println("<hr/>");
			}
			
		} catch(Exception e) {
		} finally {	// finally : ���ܰ� �ֵ� ���� ������ �����ϴ� ����
			try{ // �ڿ� ����. �����ߴ� ��ü�� �������� ����
				if(resultSet != null) resultSet.close();
				if(statement != null) statement.close();
				if(connection != null) connection.close();
			} catch(Exception e){}
		}
	%>
	
</body>
</html>