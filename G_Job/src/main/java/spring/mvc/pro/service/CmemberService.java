package spring.mvc.pro.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface CmemberService {

	//로그인 처리
	public void loginPro(HttpServletRequest req, Model model);
	
	//아아디 찾기
	public void FindIdPro(HttpServletRequest req, Model model);
	
	//비밀번호 찾기
	public void FindPwPro(HttpServletRequest req, Model model);
	
	//회원약관 불러오기
	public void Siteterm(HttpServletRequest req, Model model);
	
	//아이디 중복확인하기
	public void confirmId(HttpServletRequest req, Model model);
	
	//회원가입
	public void regist(HttpServletRequest req, Model model);
	
	//마이페이지 01-13 이상의 수정
	public void myPage(HttpServletRequest req, Model model);
	
	//마이페이지 01-15 이상의 수정
	public void modifyInfo(HttpServletRequest req, Model model);
	
   //회원탈퇴정보확인 1.16 이정훈
   public void deleteView(HttpServletRequest req, Model model);
   
   //회원탈퇴 처리 1.16
   public void deleteInfo(HttpServletRequest req, Model model);
}
