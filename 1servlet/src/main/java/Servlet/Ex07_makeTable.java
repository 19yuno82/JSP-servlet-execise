
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex07_makeTable")
public class Ex07_makeTable extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int roomNum = Integer.parseInt(request.getParameter("roomNum"));
		String color = request.getParameter("color");
		
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		//out.print("<style>table{background-color:"+color+";}</style>");
		//out.print("<table border=1><tr>");
		out.print("<table border=1 bgcolor="+color+"><tr>");
		//out.print("<table border=1 style='background-color:"+color+"'><tr>");
		
		for(int i=0;i<roomNum;i++) {
			out.print("<td>"+i+"</td>");
		}
		
		out.print("</tr></table>");
	}

}
