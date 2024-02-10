package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex08_getPost
 */
@WebServlet("/Ex08_getPost")
public class Ex08_getPost extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//0. Decoding
		//GET방식 인코딩 방법 : form태그가 해당 페이지의 charset으로 인코딩 진행
		//GET방식 디코딩 방법 : server.xml파일의 63번째줄 Connector태그에 URIEncoding="인코딩방식" 속성 추가 Tomcat9버전부터 UTF-8 기본값으로 설정
		
		//POST방식 인코딩 방법 : form태그가 해당 페이지의 charset으로 인코딩
		//POST방식 디코딩 방법 : 데이터가 담긴 request객체에 setCharacterEncoding 메소드를 사용해서 디코딩 방법 
		request.setCharacterEncoding("UTF-8");
		
		//1. 데이터 전송 방식 확인하기
		String method = request.getMethod();
		System.out.println("방식>> "+method);
		
		//2.데이터 확인
		String data = request.getParameter("data");
		System.out.println("데이터>> "+data);
		
	}

}
