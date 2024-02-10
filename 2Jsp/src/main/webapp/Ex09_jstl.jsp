<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 4-3. taglib지시자 : 태그 라이브러리를 사용하기 위한 지시자 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- 문자 하나를 정해서 jstl을 사용하겠다고 알려주기
	 prefix -> 이제 밑에서 우리가 custom한 태그를 쓸 건데 기호를 정해서 해당 라이브러리를 사용 
-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 	<!-- 화면에 1~10 출력 -->
	<%
	for (int i = 0; i < 10; i++) {
	%>
	<%=i + 1%><br>
	<%
	}
	%>
	taglib 사용
	<br>
	<!-- 태그 라이브러리 -->
	<!-- var:변수선언,begin:시작,end:끝,step:증가량 -->
	<c:forEach var="i" begin="1" end="10" step="1">
		<!-- EL표기법 -->
		<c:if test="${i%2==0}">
			${i}<br>
		</c:if>
	</c:forEach> --%>

	<!-- 1.변수 선언 -->
	<c:set var="a" value="10">
	</c:set>
	<c:set var="a" value="10" />

	<!-- 출력 -->
	<c:out value="${a}"></c:out>

	<!-- 2.if문 -->
	<hr>
	<c:if test="${a%2==0}">
		<c:out value="a는 짝수"></c:out>
	</c:if>
	<c:if test="${a%2==1}">
		<c:out value="a는 홀수"></c:out>
	</c:if>

	<!-- 3.switch문 -->
	<hr>
	<c:set var="b" value="11"></c:set>
	<c:out value="${b}"></c:out>
	
	<c:choose>
		<c:when test="${b%2==0}">
			<c:out value="b는 짝수"></c:out>
		</c:when>
		<c:otherwise>
			<c:out value="b는 홀수"></c:out>
		</c:otherwise>
	</c:choose>
	
	<!-- 4.for문 -->
	<hr>
	<c:forEach var="i" begin="1" end="5">
	<c:out value="${i}"></c:out>
	</c:forEach>
	
	<!-- 5.functions로 배열 만들기 -->
	<hr>
	<c:set var="team" value="${fn:split('박수현,류이수,이주희',',')}"></c:set>
	
	<c:forEach var="member" items="${team}">
		<c:out value="${member}"></c:out>
	</c:forEach>
	<hr>
	<c:out value="${team[1]}"></c:out>
	
	<!-- 6.functions로 문자열의 길이 가져오기 -->
	<hr>
	<c:out value="${fn:length(team)}"></c:out>
	<c:out value="${fn:length('박수현입니다.')}"></c:out>

</body>
</html>