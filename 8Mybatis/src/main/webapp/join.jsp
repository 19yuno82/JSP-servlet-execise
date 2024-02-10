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
}
</style>
</head>
<body>
	<fieldset>
		<legend>회원가입</legend>
		<!-- action에 적을 때 
			  servlet을 요청 : url mapping값(확장자 X)
			  jsp로 요청 : 해당 jsp로 가기 위한 상대경로
		-->
		<form action="JoinProgram" method="post">
			<table align="center">
				<tr>
					<td align="right">ID:</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td align="right">PW:</td>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr>
					<td align="right">NAME:</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input style="width:100px; height:30px; background-color: gold;" type="submit" value="회원가입"></td>
					
				</tr>
			</table>
		</form>
	</fieldset>
</body>
</html>