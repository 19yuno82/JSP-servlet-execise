
<!-- 4. 지시자 : servlet으로 변환할 때 필요한 정보를 기술 
		4-1. page 지시자 : 현재 jsp 페이지에 대한 환경설정 
			- language : 사용될 언어
			- contentType : 문서의 종류, 인코딩 방식
				-> servlet으로 변환될 때 response.setContentType(매개변수)의 매개변수값
			- pageEncoding : 현재 문서의 문자 타입
			- errorPage : 오류가 났을 때 대체할 페이지 지정
			- import : java 패키지나 클래스 불러올 때 사용 
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="./error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 일부러 오류나는 페이지 만들기 -->
<%= 2/0 %>

</body>
</html>