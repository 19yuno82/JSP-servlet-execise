package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//URL Mapping : 실제 경로 대신에 특정 문자열과 servlet을 Mapping(연결)하는 방법
@WebServlet("/Ex01")
									//Servlet은 httpServlet 상속 받음
public class Ex01_request_response extends HttpServlet {
					//service 메소드 : java의 main메소드 역할
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. request객체 : 사용자가 요청을 했을 때, 요청에 대한 정보를 담고 있는 객체
		//ex. 요청이 들어온 주소, 요청할 때 넘겨준 데이터(id, pw 등)
		
		//실습1 내 servlet를 요청한 ip 주소 확인하기
		String client_ip = request.getRemoteHost();
		System.out.println("들어온 ip 주소>> "+client_ip);
		//실습2 response 객체
		//ex. html문서, text, 페이지 이동
		
		//응답알 문서에 대한 설정
		//이 설정은 출력 전에 코드 작성
		response.setContentType("text/html; charset=utf-8");
		//웹에 출력 -> PrintWriter 객체
		PrintWriter out = response.getWriter();
		out.print("안녕하세요");
		out.print("<h1> 정윤오의 페이지 </h1>");
		out.print("<img width=\"500px\" height=\"500px\" src='./img/0005.png'>");
		
		
				
		//500 에러 : 문법에러 -> 코드 수정
		
	}

}
