<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
fieldset {
	display: inline;
}
</style>
</head>
<body>
	<fieldset>
		<legend>로그인</legend>

		<form action="loginProgram" method="post">
			<table>
				<tr>
					<td align="right">ID:</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td align="right">PW:</td>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
					<input style="width:100px; height:30px; background-color: gold;" type="submit" value="로그인">
					</td>
				
				</tr>
			</table>
		</form>
	</fieldset>
</body>
</html>