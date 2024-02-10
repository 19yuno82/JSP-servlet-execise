package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.MemberDAO;
import Model.MemberDTO;

@WebServlet("/joinProgram")
public class joinProgram extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("joinProgram");
		
		//join.jsp에서 보낸 id pw name 3가지 데이터를
		//받아와서 console 창에 출력
		
		//post방식 디코딩
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		
		response.setContentType("text/html; charset=utf-8");
		
		System.out.println(id);
		System.out.println(pw);
		System.out.println(name);
		
		//DTO(data transfer object) 묶기
		MemberDTO dto = new MemberDTO(id, pw, name);
		
		MemberDAO dao = new MemberDAO();
		int row =dao.join(dto);
		
		String moveUrl =null;
		if(row > 0 ) {
			System.out.println("회원가입 성공");
			moveUrl = "./login.jsp";
		} else {
			System.out.println("회원가입 실패");
			moveUrl = "./join.jsp";
		}
		
		response.sendRedirect(moveUrl);	
		
	}

}
