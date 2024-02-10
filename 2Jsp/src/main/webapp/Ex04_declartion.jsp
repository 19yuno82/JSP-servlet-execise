<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Jsp 기본문법 - 선언문 </h1>
<!-- 3. 선언문 : 멤버변수, 메소드 선언 등을 클래스 영역에 하기 위해서 사용 -->

<%!
	//합을 구하는 메소드
	public int addNumber(int num1, int num2) {
		return num1 + num2;
	}
%>

<% System.out.println(addNumber(2,3)); %>
<%= addNumber(1,3)+4 %>
</body>
</html>