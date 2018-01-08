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
		
		// �ش� ���̵�� ��й�ȣ�� ��ġ�ϸ� cnt�� 1�� ��ȯ 
		
		return cnt;
	}
}
