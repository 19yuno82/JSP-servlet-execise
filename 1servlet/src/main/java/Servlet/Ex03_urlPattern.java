package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex03")
public class Ex03_urlPattern extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ContextPath(root) : server가 프로젝트를 찾아가는 이름");
		System.out.println(" -> "+request.getContextPath());
		System.out.println("ServletPath : url mapping값");
		System.out.println(" -> "+ request.getServletPath());
		System.out.println("URL : 자원의 정확한 위치");
		System.out.println(" -> "+request.getRequestURL());
		System.out.println("URI : 자원의 고유한 식별자");
		System.out.println(" -> "+request.getRequestURI());
	}//service
	
}
