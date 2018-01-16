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
		
		// �ش� ���̵�� ��й�ȣ�� ��ġ�ϸ� cnt�� 1�� ��ȯ 
		
		return cnt;
	}
	@Override
	public int updateAdmin(Map<String, Object> map) {
		
		int cnt =0;
		AmemberDAO dao = sqlSession.getMapper(AmemberDAO.class);
		cnt = dao.updateAdmin(map);
		
		// �ش� ���̵�� ��й�ȣ�� ��ġ�ϸ� cnt�� 1�� ��ȯ 
		
		return cnt;
	}	
}
