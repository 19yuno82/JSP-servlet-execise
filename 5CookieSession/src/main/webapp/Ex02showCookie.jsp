<%@page import="java.net.URLDecoder"%>
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
<h1>쿠키 조회하기</h1>
<%
	//쿠키 조회하기
	//server가 따로 요청하지 않아도, request객체에서 조회 가능
	Cookie[] cookies = request.getCookies();
	
	for(int i=0;i<cookies.length;i++){
		out.print("쿠키이름: "+cookies[i].getName()+"<br>");
		out.print("쿠키값: "+URLDecoder.decode(cookies[i].getValue(), "UTF-8")+"<br>");
	}
%>
</body>
</html>