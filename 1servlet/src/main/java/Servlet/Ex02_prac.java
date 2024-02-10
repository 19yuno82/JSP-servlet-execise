package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//URL Mapping : 실제 경로 대신에 특정 문자열과 servlet을 Mapping(연결)하는 방법
@WebServlet("/Ex02")
public class Ex02_prac extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String client_ip = request.getRemoteHost();
		System.out.println("들어온 ip 주소 >> "+client_ip);
		
		//응답할 문서에 대한 설정
		//이 설정은 출력 전에 코드 작성
		response.setContentType("text/html; charset=utf-8");
		//웹에 출력 -> PrintWriter 객체
		PrintWriter out = response.getWriter();
		
		if(client_ip.equals("121.147.0.230")||client_ip.equals("59.0.234.161")||client_ip.equals("59.0.234.65")||client_ip.equals("0:0:0:0:0:0:0:1")) {
			out.print("<h2>우리팀 : 환영합니다.</h2>");
			out.print("<img width=\"500px\" height=\"500px\" src='./img/welcome.png'>");
		} else {
			out.print("<h2>다른팀 : 잘못 들어왔습니다.</h2>");
			out.print("<img width=\"500px\" height=\"500px\" src='./img/마동석짤2.jpg'>");
		}
		
	}//service
}//class
