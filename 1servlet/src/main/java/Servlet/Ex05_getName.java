package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex05_getName")
public class Ex05_getName extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("nameData");
		String age = request.getParameter("ageData");

		response.setContentType("text/html; charset=utf-8");

		PrintWriter out = response.getWriter();

		out.print("제 이름은 " + name + "입니다.<br>");
		out.print("제 나이은 " + age + "살입니다.<br>");

	}

}
