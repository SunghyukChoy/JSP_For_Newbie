<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>쿼리문 실행</title>
</head>
<body>
	<h2>&lt;sql:query&gt; 태그로 SELECT 쿼리문 실행</h2>
	<hr>
	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/JSPexDB?serverTimezone=UTC"
		driver="com.mysql.cj.jdbc.Driver" user="root" password="2323" />

	<sql:query var="resultSet" dataSource="${dataSource }">
		select * from member
		</sql:query>

	<table border="1">
		<tr>
			<c:forEach var="columnName" items="${resultSet.columnNames }">
				<th width="100"><c:out value="${columnName }" /></th>
			</c:forEach>
		</tr>
		<c:forEach var="row" items="${resultSet.rowsByIndex }">
			<tr>
				<c:forEach var="column" items="${row }" varStatus="i">
					<td><c:if test="${column != null }">
							<c:out value="${column }" />
						</c:if>
						<c:if test="${column == null }">
		&nbsp;
		</c:if></td>
				</c:forEach>
			</tr>
		</c:forEach>
	</table>

</body>
</html>