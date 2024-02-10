<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
fieldset {
	display: inline;
}

button {
	width: 100px;
	height: 30px;
	background-color: gold;
}
</style>
</head>
<body>

	<fieldset>
		<legend>Main</legend>
		<a href="./join.jsp"><button>회원가입</button></a><br>
		<br> <a href="./login.jsp"><button>로그인</button></a>
	</fieldset>

	<%
	String result = (String) session.getAttribute("result");

	if (result != null) {
		out.print("<br>");
		if (result.equals("success")) {
			out.print("성공");
		} else if (result.equals("fail")) {
			out.print("실패");
		} else {
			out.print("오류");
		}
	}
	%>
	<c:if test="${!empty result}">
		<c:choose>
			<c:when test="${result eq 'success'}">
				<h3>회원가입 성공</h3>
			</c:when>
			<c:otherwise>
				<h3>회원가입 실패</h3>
			</c:otherwise>
		</c:choose>
	</c:if>
	
	
</body>
</html>