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
<h1>스마트폰 상세 페이지</h1>
모델명 : 삼성 갤럭시 플립5<br>
가격 : 1,500,000원<br>
<br><br><br>
<%
	Cookie phCookie = new Cookie("item3",URLEncoder.encode("핸드폰","UTF-8"));
	//phCookie.setMaxAge(10000);
	response.addCookie(phCookie);
	
%>
<a href="./List.jsp">제품목록 페이지로 돌아가기</a>
</body>
</html>