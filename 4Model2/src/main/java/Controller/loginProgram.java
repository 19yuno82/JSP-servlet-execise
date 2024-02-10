package Controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.MemberDAO;

@WebServlet("/loginProgram")
public class loginProgram extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberDAO dao = new MemberDAO();
		String name = dao.isLogin(id, pw);
		
		if(name != null) {
			System.out.printf("%s님 환영합니다.\n",name);
			//sendRedirect 페이지 이동방식
			//name = URLEncoder.encode(name,"UTF-8");
			//response.sendRedirect("./loginSuccess.jsp?name="+name);
			
			//forwarding 페이지 이동 방식
			//RequestDispatcher rd = request.getRequestDispatcher("./loginSuccess.jsp");
			//request.setAttribute("name",name);
			//rd.forward(request, response);
			
			//세션 사용해서 값 저장 후 loginSuccess.jsp에서 name 값 출력하기
			  HttpSession session = request.getSession();
			  session.setAttribute("name", name);
			  response.sendRedirect("./loginSuccess.jsp");
			
		} else {
			System.out.println("로그인 실패");
			response.sendRedirect("./loginFail.jsp");
		}
		
	}

	private void getSession() {
		// TODO Auto-generated method stub
		
	}

}
