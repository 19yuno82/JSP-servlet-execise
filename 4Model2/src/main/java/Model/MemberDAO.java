package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {

	// DAO (data access object) : DB에 접근하는 객체
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs;

	// DB연결 메소드
	public void dbConn() {
		try {
			// 1.ojdbc6.jar 라이브러리 불러오기
			// C:\oraclexe\app\oracle\product\11.2.0\server\jdbc\lib
			// webapp - WEB-INF - lib 폴더에 넣기

			// 2. OracleDriver class 불러오기
			// DB와 java 연결해주는 통로 역할
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 3.DB에 접속하기 위한 카드키 설정
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "service";
			String password = "12345";
			conn = DriverManager.getConnection(url, user, password);
			if (conn != null) {
				System.out.println("연결 성공");
			} else {
				System.out.println("연결 실패");
			} // if
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	// 통로 닫기 메소드
		public void closed() {
			try {
				if (psmt != null)
					psmt.close();
				if (conn != null)
					conn.close(); // commit이 됨
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	// 회원가입 메소드
	public int join(MemberDTO dto) {
		int row = 0;
		dbConn();
		try {
			// 5.SQL 쿼리 작성 -> ? : 바인드변수
			String sql = "insert into member1 values(?,?,?)";
			// 6.SQL 문장을 DB에 전달 -> 전달 성공 시 PrepareStatement 객체로 반환
			psmt = conn.prepareStatement(sql);
			// 7.바인드변수에 값 채우기
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getName());

			row = psmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closed();
		}
		return row;
	}
	//회원로그인 메소드
	public String isLogin(String id, String pw) {
		String outputName = null;
		dbConn();
				
		try {
			String sql = "select * from member1 where id= ? and pw= ?" ;
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				outputName = rs.getString("name");
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closed();
		}
		return outputName;
	}

	

}
