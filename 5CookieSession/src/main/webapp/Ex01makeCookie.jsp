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
	<ol>
		Cookie : client의 정보를 유지하기 위해서 사용하는 방법
		<li>저장위치 : clientPC</li>
		<li>보안 : 취약</li>
		<li>자원 : client의 자원을 사용해서 server에 영향 X</li>
		<li>용량 : 쿠키 1개당 4KB * 300게 = 1.2MB</li>
		<li>저장형식 : 텍스트만 저장 가능, 영어만 가능(한글은 인코딩 필요)</li>
	</ol>
	<%
		//쿠키 객체 생성
		//new Cookie("쿠키이름(key)","쿠키값(value)")
		//한글이라면 한글 인코딩 => URLEncoder 객체 사용
		Cookie cookie = new Cookie("name",URLEncoder.encode("정윤오","UTF-8"));
		//쿠키의 기한 설정
		//양수: 초단위로 해당 기간만큼 쿠키를 유지
		//음수: 브라우저 종료 시 쿠키가 제거
		//0: 제거
		cookie.setMaxAge(3600);
		//쿠키 전송
		//쿠키는 clientpc로 전송 => response 객체로 전송
		response.addCookie(cookie);
	%>
</body>
</html>