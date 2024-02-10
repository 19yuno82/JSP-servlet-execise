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
	//쿠키 삭제 -> 쿠키의 기한을 0으로 설정
	Cookie[] cookies = request.getCookies();

	//쿠키의 이름에 item이 포함된 쿠키만 기한을 0으로 설정
	for (Cookie c : cookies) {
		if (c.getName().contains("item")) {
			c.setMaxAge(0);
			//쿠키가 업데이트 될 때에는 다시 쿠키 보내기
			response.addCookie(c);
		}
	}
	
	response.sendRedirect("./List.jsp");
	%>
</body>
</html>