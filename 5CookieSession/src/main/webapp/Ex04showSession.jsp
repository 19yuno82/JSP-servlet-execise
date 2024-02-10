<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
 	//세션 값 가져오기
 	String id = (String)session.getAttribute("id");
 	Integer age = (Integer)session.getAttribute("age");
 %>
 
 id => <%=id %><br>
 age => <%=age %><br>

	<a href="Ex05deleteSession.jsp">세션삭제</a>
	<a href="Ex05invalidateSession.jsp">모든세션삭제</a>
	<hr>
	
	기본 세션 유효시간 : <%=session.getMaxInactiveInterval() %><br>
	세션 ID : <%=session.getId() %><br>
	<% session.setMaxInactiveInterval(5); %>
	세션 유효시간 : <%=session.getMaxInactiveInterval() %><br>

</body>
</html>