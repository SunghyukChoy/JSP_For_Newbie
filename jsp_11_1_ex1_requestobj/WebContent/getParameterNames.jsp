<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%
		request.setCharacterEncoding("UTF-8");
		Enumeration<String> params = request.getParameterNames();
		/* 제네릭으로 변수 선언 시 아래의 name 변수 값 할당 시 형변환 필요 없음. */
		/* 파라미터 값을 한꺼번에 받아온다 */

		while (params.hasMoreElements()) { //폼에서 넘어온 파라미터 값이 더 있는 동안
			String name = params.nextElement(); // 파라미터 값을 차례대로 가져와 name 변수에 저장
			String[] data = request.getParameterValues(name); // name 변수의 값들은 꺼내와 data 변수에 저장.
			if (data != null) {
				for (String eachData : data) {	// data 배열의 값을 하나씩 꺼내 eachData에 저장.
					out.println(eachData);	// 실행부
				}
				out.println("<p>");
			}
		}
	%>
</body>
</html>