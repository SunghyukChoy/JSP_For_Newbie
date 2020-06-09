<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>구구단</title>
<style>
table, tr, td {
	border: 1px solid orangered;
	border-collapse: collapse;
}
</style>
</head>
<body>
	<h2>구구단</h2>
	<hr>
	<table>
		<c:forEach var="i" begin="1" end="9">
			<tr>
				<c:forEach var="j" begin="1" end="9">
					<td width=100>${i }x${j }=${i*j }</td>
				</c:forEach>
			</tr>
		</c:forEach>
	</table>
</body>
</html>