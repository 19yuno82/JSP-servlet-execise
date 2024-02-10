<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="Model.memberDTO"%>
<%@page import="java.util.List"%>
<%@page import="Model.MemberDAO"%>
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
	List<memberDTO>	list = new MemberDAO().memList();
	%>
	<table border="1">
		<h2>회원관리페이지</h2>
		<tr>
			<td>ID</td>
			<td>PASSWORD</td>
			<td>NAME</td>
		</tr>
	<%
		for(memberDTO i : list) {
			out.print("<tr>");
			out.print("<td>"+i.getId()+"</td>");
			out.print("<td>"+i.getPw()+"</td>");
			out.print("<td>"+i.getName()+"</td>");
			out.print("</tr>");
		}
	%>
	</table>
	
</body>
</html>