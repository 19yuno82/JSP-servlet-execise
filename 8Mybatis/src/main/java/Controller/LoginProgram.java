package Controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.MemberDAO;
import Model.memberDTO;

@WebServlet("/LoginProgram")
public class LoginProgram extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		memberDTO dto = new memberDTO(id,pw);
		
		String name = new MemberDAO().login(dto);
		
		if (name != null) {
//			RequestDispatcher rd = request.getRequestDispatcher("LoginSuccess.jsp");
//			request.setAttribute("name", name);
//			rd.forward(request, response);
			
			name = URLEncoder.encode(name,"UTF-8");
			response.sendRedirect("./loginsuccess.jsp?name="+name);
			
			HttpSession session = request.getSession();
			session.setAttribute("name", name);
			response.sendRedirect("./loginSuccess.jsp");
		} else {
			response.sendRedirect("./loginFail.jsp");
		}
		
		System.out.println(name);
		
	}

}
