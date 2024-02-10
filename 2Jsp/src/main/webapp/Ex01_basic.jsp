<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Jsp 기본문법 </h1>
<!-- 1.스크립트릿 : jsp페이지 내에 java코드를 작성하기 위해서 사용 -->
<%
	//java 언어 사용 가능
	int a=1;
	int b=3;
	int result=a+b;
	System.out.println("a+b = "+result);
	
%>
<!-- 2.표현식 : web에 결과값을 출력하기 위해 사용
			: 변수, 메소드 호출, 연산 -->
a+b = <%= result+5 %>

</body>
</html>