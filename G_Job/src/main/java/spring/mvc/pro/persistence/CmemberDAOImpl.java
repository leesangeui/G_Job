package spring.mvc.pro.persistence;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CmemberDAOImpl implements CmemberDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public int loginPro(Map<String, Object> map) {
		
		int cnt =0;
		CmemberDAO dao = sqlSession.getMapper(CmemberDAO.class);
		cnt = dao.loginPro(map);
		
		// 해당 아이디와 비밀번호가 일치하면 cnt로 1을 반환 
		
		return cnt;
	}
}
