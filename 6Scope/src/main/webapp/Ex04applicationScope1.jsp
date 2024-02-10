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
		application.setAttribute("nick", "application영역");
	
		String nick = (String)application.getAttribute("nick");
		
	%>
	nick : <%=nick %><br>
	nick(EL) : ${sessionScope.nick} <br>
	
	<a href="./Ex04Ex04applicationScope2.jsp">2페이지 이동</a>
	
</body>
</html>