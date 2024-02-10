package Controller;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import Model.MemberDAO;
import Model.memberDTO;

@WebServlet("/JoinProgram")
public class JoinProgram extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//post방식 인코딩
		request.setCharacterEncoding("UTF-8");
		//요청데이터 3개 가져오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		
		memberDTO dto = new memberDTO(id, pw, name);
		int isJoin = new MemberDAO().join(dto);
		
		System.out.println(isJoin);
		
		String result = "";
		if(isJoin>0) { //회원가입 성공
			result = "success";
			
			
		}else { //회원가입 실패
			result = "fail";
		}
		HttpSession session = request.getSession();
		session.setAttribute("result", result);
		response.sendRedirect("./Main.jsp");
	}

}
