<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body align="center">
<%
	String topic = request.getParameter("topic");
	String[] items = request.getParameterValues("item");
	Random rd = new Random();
	
	int i = rd.nextInt(items.length);
%>
<fieldset>
	<legend>랜덤당첨결과</legend>
	<%=topic%><br>
	<%=items[i]%>
	
</fieldset>
</body>
</html>