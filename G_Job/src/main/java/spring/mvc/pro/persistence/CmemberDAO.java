package spring.mvc.pro.persistence;

import java.util.ArrayList;
import java.util.Map;


import spring.mvc.pro.vo.CmemberVO;
import spring.mvc.pro.vo.Site_basicVO;
public interface CmemberDAO {

	//로그인 처리
	public int loginPro(Map<String,Object> map);
	
	//아이디 찾기 처리
	public String FindId(Map<String,Object> map);
	
	//비밀번호 찾기 처리
	public String FindPw(Map<String,Object> map);
	
	//회원약관 불러오기
	public Site_basicVO getSiteterm();
	
	//아이디 중복확인하기
	public int custConfirmId(Map<String,Object> map);
	
	// 회원가입
	public int registMember(CmemberVO vo);
	
	// 마이페이지 조회 01-13 이상의 수정
	public CmemberVO viewMyPage(Map<String,Object> map);
	
	// 개인정보 수정 01-15 이상의 수정
	public void modifyMyPage(Map<String,Object> map);
	
	// 아이디 비밀번호 체크 01-15 이상의 수정
	public int CheckIdPw(Map<String,Object> map);
	
    // 회원탈퇴정보 1.16 이정훈
    public CmemberVO deleteMemView(Map<String,Object> map);
   
    // 회원탈퇴처리 1.16
    public int deleteMemInfo(Map<String, Object> map);
}
