package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex09_userInfo")
public class Ex09_userInfo extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		out.print("id:"+id+"<br>");
		String pw = request.getParameter("pw");
		out.print("pw:"+pw+"<br>");
		String pwCheck = request.getParameter("pwCheck");
		out.print("pwCheck:"+pwCheck+"<br>");
		String gender = request.getParameter("gender");
		out.print("gender: "+gender+"<br>");
		String bloodType = request.getParameter("bloodtype");
		out.print("blood:"+bloodType+"<br>");
		String date = request.getParameter("date");
		out.print("birth:"+date+"<br>");
		String[] hobys = request.getParameterValues("hoby");
		out.print("hoby: ");
		for(int i=0; i<hobys.length;i++) out.print(hobys[i]+" ");
		out.print("<br>");
		String color = request.getParameter("color");
		out.print("color:"+color);
		out.print("<span style='background-color:"+color+"'>색깔표시</span><br>");
		String board = request.getParameter("board");
		out.print("message:"+board);
					
		
	}

}
