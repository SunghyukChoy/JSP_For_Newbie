<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>쿼리문 실행 프로세스</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
	%>

	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/JSPexDB?serverTimezone=UTC"
		driver="com.mysql.cj.jdbc.Driver" user="root" password="2323" />


	<!-- sql:update 태그 : 수정, 삽입, 삭제 가능. -->
	<sql:update dataSource="${dataSource }" var="resultSet">
	insert into member(id, name, passwd) values (?, ?, ?)
	<sql:param value="<%=id%>" />
		<sql:param value="<%=name%>" />
		<sql:param value="<%=passwd%>" />
	</sql:update>
	<c:import var="url" url="04_sql.jsp" />
	${url }
</body>
</html>