<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Locale TimeZone</title>
</head>
<body>
	<jsp:useBean id="now" class="java.util.Date" />
	<p>
		한국 :
		<fmt:formatDate value="${now }" type="both" dateStyle="full"
			timeStyle="full" />
	</p>
	<p>
		<fmt:timeZone value="America/New_York">
		뉴욕 : <fmt:formatDate value="${now }" type="both" dateStyle="full"
				timeStyle="full" />
		</fmt:timeZone>
	</p>
	<p>
		<fmt:timeZone value="Europe/London">
		런던 : <fmt:formatDate value="${now }" type="both" dateStyle="full"
				timeStyle="full" />
		</fmt:timeZone>
	</p>
</body>
</html>