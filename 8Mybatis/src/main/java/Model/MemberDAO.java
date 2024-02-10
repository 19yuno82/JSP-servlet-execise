package Model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.sqlSessionManager;

public class MemberDAO {
	
	//세션을 생성해 줄 수 있는 Factory
	SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();
	//Factory를 사용해서 세션 생성
	SqlSession sqlSession = sqlSessionFactory.openSession(true); //auto commit

	public int join(memberDTO dto) {
		int isJoin = 0;
		
		try {
			isJoin = sqlSession.insert("database.Mapper.join", dto);
			if(isJoin > 0) {
				//회원가입 성공
				//sqlSession.commit();
				System.out.println("join Success");
			}else {
				//회원가입 실패
				//sqlSession.rollback();
				System.out.println("Join Fail");
			}
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			sqlSession.close();
		}
		
		return isJoin;
	}

	public String login(memberDTO dto) {
		String name=null;
		
		try {
			name = (String)sqlSession.selectOne("database.Mapper.login", dto);
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			sqlSession.close();
		}
		
		return name;
	}
	
	public List<memberDTO> memList() {
		List<memberDTO>	list = null;
		try {
			list = sqlSession.selectList("database.Mapper.selectAll");
		} catch (Exception e) {
			
		}finally {
			sqlSession.close();
		}
		
		return list;
	}

}
