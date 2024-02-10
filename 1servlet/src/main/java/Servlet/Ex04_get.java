package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex04_get")
public class Ex04_get extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Ex04_send.html에서 보낸 데이터를 받아줄 공간
		//data이름을 가진 값을 받아주기
		//html페이지에서 이 servlet을 요청 -> 요청할 때 data를 가지고 왔음
		//요청과 관련된 정보가 들어있는 request 객체에서 꺼내와야 한다
		//.getParameter("from태그에 작성했던 name값")
		String data = request.getParameter("data");
		System.out.println(data);
		
		//500 에러 : 문법 에러
		//404 에러 : Not Found
		
	}

}