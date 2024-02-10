<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 요청객체 : request에서 데이터 받아오기 -->
	<%! 
		public String grade(int avg) {
		if(avg<=100) {
			if(avg>=95){
				return "A+";
			}else if(avg>=90){
				return "A";
			}else if(avg>=85){
				return "B+";
			}else if(avg>=80){
				return "B";
			}else {
				return "F";
			}
		}else {
			return "점수 입력이 잘못되었습니다" ;
		}
	}
	%>
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		int java = Integer.parseInt(request.getParameter("java"));
		int web = Integer.parseInt(request.getParameter("web"));
		int iot = Integer.parseInt(request.getParameter("iot"));
		int andr = Integer.parseInt(request.getParameter("andr"));
		
		int avg = (java+web+iot+andr)/4;
		String avg_grade = grade(avg);
	%>
	<fieldset>
		<legend>학점확인프로그램</legend>
			<table align="center">
				<tr>
					<td align="left">이름</td>
					<td align="right"><%= name %></td>
				</tr>
				<tr>
					<td align="left">JAVA점수</td>
					<td align="right"><%= java %></td>
				</tr>
				<tr>
					<td align="left">WEB점수</td>
					<td align="right"><%= web %></td>
				</tr>
				<tr>
					<td align="left">IOT점수</td>
					<td align="right"><%= iot %></td>
				</tr>
				<tr>
					<td align="left">ANDROID점수</td>
					<td align="right"><%= andr %></td>
				</tr>
				<tr>
					<td align="left">평균</td>
					<td align="right"><%= avg %></td>
				</tr>
				<tr>
					<td align="left">학점</td>
					<td align="right"><strong><%= avg_grade %></strong></td>
				</tr>
			</table>
	</fieldset>

</body>
</html>