<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>forward방식</h1>
	<ul>
		<li>요청이 들어오면 서버 내에서 이동해야 할 페이지로 알아서 이동</li>
		<li>요청이 1번, 처음 요청했던 request객체에 담긴 정보(id,pw 등..)가 유효함</li>
		<li>요청이 1번이라서 네트워크 트래픽 발생X, 실행속도가 빠름</li>
		<li>request객체를 사용하기 때문에 object타입으로 모든 객체를 담을 수 있음</li>
		<li>단점 : 서버내에서만 이동이 가능 -> 외부서버로 이동 불가능</li>
	</ul>
	<%-- <% request.getRequestDispatcher("http://www.naver.com").forward(request,response); %> --%>
	<hr>
	<h1>sendRedirect방식</h1>
	<ul>
		<li>요청이 들어오면 서버에서 이동해야 할 페이지를 응답해서 다시 요청할 수 있도록 함</li>
		<li>요청이 2번, 서로 다른 request객체이기 때문에 데이터 전송할 때 쿼리스트링 방식을 사용해야 함</li>
		<li>요청이 2번이라서 네트워크 트래픽이 발생O, 실행속도가 느림</li>
		<li>쿼리스트링 방식을 사용하기 때문에, text형태로만 데이터 전송 가능</li>
		<li>이동할 페이지를 새롭게 요청하기 때문에, 다른 서버에 페이지로 이동 가능</li>
	</ul>

</body>
</html>