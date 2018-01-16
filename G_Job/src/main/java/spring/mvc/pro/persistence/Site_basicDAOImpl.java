package spring.mvc.pro.persistence;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.pro.vo.Site_basicVO;
@Repository
public class Site_basicDAOImpl implements Site_basicDAO{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int updatePor(Map<String, Object> map) {
		int cnt =0;
		Site_basicDAO dao = sqlSession.getMapper(Site_basicDAO.class);
		cnt = dao.updatePor(map);
		
		// �ش� ���̵�� ��й�ȣ�� ��ġ�ϸ� cnt�� 1�� ��ȯ 
		
		return cnt;
	}

	@Override
	public Site_basicVO selectPro() {
		Site_basicVO dto = new Site_basicVO();
		Site_basicDAO dao = sqlSession.getMapper(Site_basicDAO.class);
		dto = dao.selectPro();
		
		// �ش� ���̵�� ��й�ȣ�� ��ġ�ϸ� cnt�� 1�� ��ȯ 
		
		return dto;
	}
	
}
