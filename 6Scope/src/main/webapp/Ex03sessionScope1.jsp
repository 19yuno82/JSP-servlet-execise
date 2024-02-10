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
		session.setAttribute("nick", "session영역");
	
		String nick = (String)session.getAttribute("nick");
	%>
	nick : <%=nick%> <br>
	nick(EL) : ${sessionScope.nick} <br>
	
	<a href="Ex03sessionScope2.jsp">2페이지로 이동</a>
	
</body>
</html>