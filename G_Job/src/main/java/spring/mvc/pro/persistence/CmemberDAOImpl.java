package spring.mvc.pro.persistence;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.pro.vo.CmemberVO;
import spring.mvc.pro.vo.Site_basicVO;

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

	//아이디 찾기 처리
	@Override
	public String FindId(Map<String, Object> map) {
		
		String userid ="";
		CmemberDAO dao = sqlSession.getMapper(CmemberDAO.class);
		userid = dao.FindId(map);
		
		//등록되지 않은 정보를 입력했을경우 
		if(userid == null) {
			userid = "1";
		}
		return userid;
	}

	//비밀번호 찾기 처리
	@Override
	public String FindPw(Map<String, Object> map) {
		
		String passwd = "";
		CmemberDAO dao = sqlSession.getMapper(CmemberDAO.class);
		passwd = dao.FindPw(map);
		
		//등록되지 않은 정보를 입력했을경우
		if(passwd == null) {
			passwd = "1";
		}
		
		return passwd;
	}
	//회원약관 불러오기
		@Override
		public Site_basicVO getSiteterm() {
			Site_basicVO vo = null;
			
			CmemberDAO dao = sqlSession.getMapper(CmemberDAO.class);
			vo = dao.getSiteterm();
			
			return vo;
		}

	
	// 아이디중복확인 
    @Override
	public int custConfirmId(Map<String, Object> map) {
		int cnt = 0;
		CmemberDAO dao = sqlSession.getMapper(CmemberDAO.class);
		cnt = dao.custConfirmId(map);
		
		return cnt;
	}

    // 회원가입
    @Override
	public int registMember(CmemberVO vo) {
		int cnt = 0;
		
		CmemberDAO dao = sqlSession.getMapper(CmemberDAO.class);
		cnt = dao.registMember(vo);
		return cnt;
	}

    // 마이페이지 조회 01-13 이상의 수정
	@Override
	public CmemberVO viewMyPage(Map<String, Object> map) {
		CmemberVO vo = null;
		
		CmemberDAO dao = sqlSession.getMapper(CmemberDAO.class);
		vo = dao.viewMyPage(map);
		
		return vo;
	}

	// 개인정보 수정 01-15 이상의 수정
	@Override
	public void modifyMyPage(Map<String, Object> map) {
		CmemberVO vo = null;
		System.out.println("a7");
		CmemberDAO dao = sqlSession.getMapper(CmemberDAO.class);
		dao.modifyMyPage(map);
		
		
		
	}

	// 아이디 비밀번호 체크 01-15 이상의 수정
	@Override
	public int CheckIdPw(Map<String, Object> map) {
		int cnt=0;
		CmemberDAO dao = sqlSession.getMapper(CmemberDAO.class);
		cnt=dao.CheckIdPw(map);
		return cnt;
	}
}
