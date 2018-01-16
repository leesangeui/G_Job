package spring.mvc.pro.persistence;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AmemberDAOImpl implements AmemberDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int loginPro(Map<String, Object> map) {
		
		int cnt =0;
		AmemberDAO dao = sqlSession.getMapper(AmemberDAO.class);
		cnt = dao.loginPro(map);
		
		// 해당 아이디와 비밀번호가 일치하면 cnt로 1을 반환 
		
		return cnt;
	}
	@Override
	public int updateAdmin(Map<String, Object> map) {
		
		int cnt =0;
		AmemberDAO dao = sqlSession.getMapper(AmemberDAO.class);
		cnt = dao.updateAdmin(map);
		
		// 해당 아이디와 비밀번호가 일치하면 cnt로 1을 반환 
		
		return cnt;
	}	
}
