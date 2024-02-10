<%@page import="Model.MemberDAO"%>
<%@page import="Controller.loginProgram"%>
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
		background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8ucO4GXvAO0tPAqz12xcjkMpysCOkSEO-8w&usqp=CAU');
		background-size : contain;
		background-repeat: no-repeat;
	}
</style>
</head>
<body>
<fieldset align="center">
<legend>환영문구</legend>
<br><br>
<% 
	//String name =  request.getParameter("name");
	//String name = (String)request.getAttribute("name");
	String name = (String)session.getAttribute("name");
%>
<B>${name}님 환영합니다.</B>

<br><br>
</fieldset>
</body>
</html>