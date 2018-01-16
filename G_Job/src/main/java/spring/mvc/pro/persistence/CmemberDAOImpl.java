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
		
		// �ش� ���̵�� ��й�ȣ�� ��ġ�ϸ� cnt�� 1�� ��ȯ 
		
		return cnt;
	}

	//���̵� ã�� ó��
	@Override
	public String FindId(Map<String, Object> map) {
		
		String userid ="";
		CmemberDAO dao = sqlSession.getMapper(CmemberDAO.class);
		userid = dao.FindId(map);
		
		//��ϵ��� ���� ������ �Է�������� 
		if(userid == null) {
			userid = "1";
		}
		return userid;
	}

	//��й�ȣ ã�� ó��
	@Override
	public String FindPw(Map<String, Object> map) {
		
		String passwd = "";
		CmemberDAO dao = sqlSession.getMapper(CmemberDAO.class);
		passwd = dao.FindPw(map);
		
		//��ϵ��� ���� ������ �Է��������
		if(passwd == null) {
			passwd = "1";
		}
		
		return passwd;
	}
	//ȸ����� �ҷ�����
		@Override
		public Site_basicVO getSiteterm() {
			Site_basicVO vo = null;
			
			CmemberDAO dao = sqlSession.getMapper(CmemberDAO.class);
			vo = dao.getSiteterm();
			
			return vo;
		}

	
	// ���̵��ߺ�Ȯ�� 
    @Override
	public int custConfirmId(Map<String, Object> map) {
		int cnt = 0;
		CmemberDAO dao = sqlSession.getMapper(CmemberDAO.class);
		cnt = dao.custConfirmId(map);
		
		return cnt;
	}

    // ȸ������
    @Override
	public int registMember(CmemberVO vo) {
		int cnt = 0;
		
		CmemberDAO dao = sqlSession.getMapper(CmemberDAO.class);
		cnt = dao.registMember(vo);
		return cnt;
	}

    // ���������� ��ȸ 01-13 �̻��� ����
	@Override
	public CmemberVO viewMyPage(Map<String, Object> map) {
		CmemberVO vo = null;
		
		CmemberDAO dao = sqlSession.getMapper(CmemberDAO.class);
		vo = dao.viewMyPage(map);
		
		return vo;
	}

	// �������� ���� 01-15 �̻��� ����
	@Override
	public void modifyMyPage(Map<String, Object> map) {
		CmemberVO vo = null;
		System.out.println("a7");
		CmemberDAO dao = sqlSession.getMapper(CmemberDAO.class);
		dao.modifyMyPage(map);
		
		
		
	}

	// ���̵� ��й�ȣ üũ 01-15 �̻��� ����
	@Override
	public int CheckIdPw(Map<String, Object> map) {
		int cnt=0;
		CmemberDAO dao = sqlSession.getMapper(CmemberDAO.class);
		cnt=dao.CheckIdPw(map);
		return cnt;
	}
}
