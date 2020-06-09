<%@ page pageEncoding="UTF-8"%>
<%!int pageCount = 0;
/* 해당 프로세스가 끝나기 전(브라우저가 종료되기 전)까지 유지되는 전역 변수. 전역 메소드. 새로고침 시에도 프로세스 유지, 카운트는 늘어남.*/

	void addCount() {
		pageCount++;
	}
%>
<%
	addCount();
%>
<p>	이 사이트 방문은 <%=pageCount%>번째입니다.

<%-- HTML 문서  형식을 사용하지 않는 이유는 HTML 형식의 file들을 include 하면 브라우저의 
	요소 검사에서 여러개의 HTML 형식이 나타나게 됨.  --%>