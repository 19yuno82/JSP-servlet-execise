<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>컴퓨터 상세 페이지</h1>
모델명 : 삼성 올인원 PC<br>
가격 : 1,200,000원<br>
<br><br><br>
<%
	Cookie pcCookie = new Cookie("item1",URLEncoder.encode("컴퓨터","UTF-8"));
	//pcCookie.setMaxAge(10000);
	response.addCookie(pcCookie);
	
%>
<a href="./List.jsp">제품목록 페이지로 돌아가기</a>
</body>
</html>