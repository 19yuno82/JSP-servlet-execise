<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ol>
		session : client의 정보를 유지하기 위해서 사용하는 방법
		<li>저장위치 : serverPC</li>
		<li>보안 : 우수</li>
		<li>용량 : 서버가 허용하는 만큼 가능</li>
		<li>저장형식 : 객체 저장 가능</li>
	</ol>
	
	<%
		//1.세션 값 설정 setAttribute(String name, Object value)
		session.setAttribute("id", "test");
		session.setAttribute("age", 20);
		
		//어차피 서버가 알아서 세션id를 부여해주기 때문에 따로 응답X
	%>
	<a href="Ex04showSession.jsp">세션확인</a>
	
	
</body>
</html>