<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
fieldset{
	display: inline;
}
</style>
</head>
<body>
	<fieldset>
	<legend>판매목록</legend>
	<ul>
	<li><a href="./Computer.jsp">컴퓨터</a></li>
	<li><a href="./Mouse.jsp">마우스</a></li>
	<li><a href="./Phone.jsp">핸드폰</a></li>
	</ul>
	</fieldset>
	<hr>
	<fieldset>
	<legend>최근 본 목록</legend>
	<%
	//최근 본 상품 조회
	//1.쿠키 조회
	//2.쿠키이름에 item이 있다면 웹에 출력
	Cookie[] cookies = request.getCookies();
	for(Cookie c : cookies) {
		if(c.getName().contains("item")) out.print(URLDecoder.decode(c.getValue(),"UTF-8")+"<br>");
	}
	%>
	<a href="./Delete.jsp">최근 본 목록 삭제</a>
	</fieldset>
</body>
</html>