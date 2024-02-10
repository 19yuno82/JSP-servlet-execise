<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
 public int calNum(int num1,int num2, int i) {
	int result = 0;
	 switch(i) {
	 case 0 :
		result = num1 + num2;
	 	break;
	 case 1 :
		 result = num1 - num2;
		 	break;
	 case 2 :
		 result = num1 * num2;
		 	break;
	 case 3 :
		 result = num1 / num2;
		 	break;
	 }
	 return result;
	
}
%>

<%
	int n1 = Integer.parseInt(request.getParameter("num1"));
	int n2 = Integer.parseInt(request.getParameter("num2"));
	String[] sym = {"+","-","*","/"};
%>

<%for(int i=0;i<4;i++) {%>
<%=n1%> <%=sym[i]%> <%=n2%> = <%=calNum(n1, n2, i)%><br>
<%} %>


</body>
</html>