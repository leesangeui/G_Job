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
		
		// 해당 아이디와 비밀번호가 일치하면 cnt로 1을 반환 
		
		return cnt;
	}

	@Override
	public Site_basicVO selectPro() {
		Site_basicVO dto = new Site_basicVO();
		Site_basicDAO dao = sqlSession.getMapper(Site_basicDAO.class);
		dto = dao.selectPro();
		
		// 해당 아이디와 비밀번호가 일치하면 cnt로 1을 반환 
		
		return dto;
	}
	
}
