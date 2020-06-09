<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		Object obj1 = session.getAttribute("mySessionName"); // 해당하는 세션 속성의 값을 얻어옴. getAttribute의 반환값은 무조건 Object 타입. obj1에는 "mySessionData"가 담겨있음
		String mySessionName = (String) obj1; // obj1을 형변환 하여 mySessionName에 담음.
		out.println(mySessionName + "<br />");

		Object obj2 = session.getAttribute("myNum");	// obj2에는 12345라는 값이 담겨있음.	
		Integer myNum = (Integer) obj2;		// obj2를 Integer형으로 형변환
		out.println(myNum + "<br />");

		out.println("************************ <br />");

		String sName;
		String sValue;
		Enumeration enumeration = session.getAttributeNames(); // 모든 name을 얻어옴.
		while (enumeration.hasMoreElements()) {
			sName = enumeration.nextElement().toString();	//toString() 메소드는 객체가 가지고 있는 정보나 값들을 문자열로 만들어 리턴
			sValue = session.getAttribute(sName).toString();
			out.println("sName : " + sName + "<br />");
			out.println("sValue : " + sValue + "<br />");
		}

		out.println("************************ <br />");

		String sessionID = session.getId();	// 세션의 ID : 하나의 브라우저마다 고유의 id가 생성. 컨테이너가 자동 생성. getId() : 브라우저에 매칭하는 id를 가져옴.
		out.println("sessionID : " + sessionID + "<br />");
		int sessionInter = session.getMaxInactiveInterval(); //getMaxInactiveInterval() : 세션의 유효시간
		out.println("sessionInter : " + sessionInter + "<br />");

		out.println("************************ <br />");

		session.removeAttribute("mySessionName");	// 매개변수로 세션의  name을 넣어주면 해당 name의 세션이 삭제됨.
		Enumeration enumeration1 = session.getAttributeNames();
		while (enumeration1.hasMoreElements()) {
			sName = enumeration1.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			out.println("sName : " + sName + "<br />");
			out.println("sValue : " + sValue + "<br />");
		}

		out.println("************************ <br />");

		session.invalidate();	// 세션에 있는 모든 데이터 삭제
		
		if (request.isRequestedSessionIdValid()) { // 유효한 세션이 있냐라고 물음 
			out.println("session valid");
		} else {
			out.println("session invalid");	// 세션의 데이터를 모두 삭제했으므로 지금의 구문 출력
		}
	%>

</body>
</html>