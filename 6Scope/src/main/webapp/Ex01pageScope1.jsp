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
		//페이지 영역에 값 저장
		//pageContext
		pageContext.setAttribute("nick", "페이지 영역");
		
		//페이지 영역에서 값 가져오기
		String nick = (String)pageContext.getAttribute("nick");
		
	%>
	
	닉네임 : <%= nick %> <br>
	닉네임(EL) : ${nick} <!-- pageScope.nick 으로도 value 불러옴 -->
	
	<hr>
	<a href="./Ex01pageScope2.jsp">2페이지로 이동</a>
	
</body>
</html>