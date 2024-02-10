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
	//requset 영역에 값 저장하기
	request.setAttribute("nick", "request영역");
	//request 영역에 값 가져오기
	String nick = (String)request.getAttribute("nick");
	//
	RequestDispatcher rd = request.getRequestDispatcher("./Ex02requestScope2.jsp");
	rd.forward(request, response);
	%>
	<!-- 화면에 출력 + EL문법으로도 출력 -->
	nick : <%=nick%> <br>
	nick(EL) : ${nick} <br> <!-- requestScope.nick -->
	
	<a href="./Ex02requestScope2.jsp">2페이지로 이동</a>

</body>
</html>