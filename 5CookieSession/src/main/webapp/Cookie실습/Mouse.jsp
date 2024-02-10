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
<h1>마우스 상세 페이지</h1>
모델명 : 삼성 무선 마우스<br>
가격 : 15,000원<br>
<br><br><br>
<%
	Cookie mCookie = new Cookie("item2",URLEncoder.encode("마우스","UTF-8"));
	//mCookie.setMaxAge(10000);
	response.addCookie(mCookie);
	
%>
<a href="./List.jsp">제품목록 페이지로 돌아가기</a>
</body>
</html>