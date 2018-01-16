package spring.mvc.pro.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.swing.plaf.synth.SynthSeparatorUI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.pro.persistence.CmemberDAOImpl;
import spring.mvc.pro.vo.CmemberVO;
import spring.mvc.pro.vo.Site_basicVO;

@Service
public class CmemberServiceImpl implements CmemberService {

	@Autowired
	CmemberDAOImpl CmemberDAO;

	
	//로그인 처리
	@Override
	public void loginPro(HttpServletRequest req, Model model) {
		
		// 값 받아오기
		
		if(req.getParameter("id") != null) {
			
			String strId = req.getParameter("id");
			String strPwd = req.getParameter("passwd");
			int m_type = Integer.parseInt(req.getParameter("m_type"));
			
			Map<String,Object> map = new HashMap<String,Object>() ;
			
			map.put("strId",strId);
			map.put("strPwd",strPwd);
			map.put("m_type", m_type);
			
			int cnt = 0 ;
			
			cnt = CmemberDAO.loginPro(map);
			
			// 아이디와 비밀번호가 일치
			if(cnt==1) {
				
				if(m_type==1) {
					
					req.getSession().setAttribute("ISessionId", strId);
					
				}else if(m_type==2) {
					
					req.getSession().setAttribute("CSessionId", strId);
				}
				
			// 아이디와 비밀번호가 불일치	
			}else {
				req.getSession().setAttribute("ISessionId", null);
				req.getSession().setAttribute("CSessionId", null);
			}
			model.addAttribute("cnt",cnt);
			model.addAttribute("m_type",m_type);
		}
		
	}

	//아이디 찾기 처리
	@Override
	public void FindIdPro(HttpServletRequest req, Model model) {
		
		//입력폼에서 값 받아오기
		
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String email_tail = req.getParameter("email_tail");
		String m_type = req.getParameter("m_type");
		email = email + '@' + email_tail;
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("name", name);
		map.put("email", email);
		map.put("m_type", m_type);
		String FindId = CmemberDAO.FindId(map);
		
		
		model.addAttribute("FindId",FindId);
		
		
	}

	//비밀번호 찾기
	@Override
	public void FindPwPro(HttpServletRequest req, Model model) {
		
		//입력폼에서 값 받아오기
		
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String email_tail1 = req.getParameter("email_tail1");
		String m_type= req.getParameter("m_type");
		email = email + '@' + email_tail1;
		
		String password_que = req.getParameter("password_que");
		String password_chk = req.getParameter("password_chk");
		
		
		System.out.println(name);
		System.out.println(email);
		System.out.println(password_que);
		System.out.println(password_chk);
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("name", name);
		map.put("email", email);
		map.put("password_que", password_que);
		map.put("password_chk", password_chk);
		map.put("m_type", m_type);
		String FindPw = CmemberDAO.FindPw(map);
		System.out.println(FindPw);
		model.addAttribute("FindPw",FindPw);
	}
	

	//회원약관 불러오기
	@Override
	public void Siteterm(HttpServletRequest req, Model model) {
		
		// 가입종류 선택 ( 1: 개인 / 2: 기업)
		int m_type = Integer.parseInt(req.getParameter("m_type"));
		
		// 회원 약관 불러오기
		Site_basicVO vo = CmemberDAO.getSiteterm();
		
		model.addAttribute("vo",vo);
		model.addAttribute("m_type",m_type);
	}
	
	//아이디 중복확인
		@Override
		public void confirmId(HttpServletRequest req, Model model) {
			String uid = req.getParameter("uid"); 
			int m_type = Integer.parseInt(req.getParameter("m_type"));
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("uid", uid);
			map.put("m_type", m_type);
			
			int cnt = CmemberDAO.custConfirmId(map);
			
			model.addAttribute("cnt",cnt);
			model.addAttribute("uid",uid);
			model.addAttribute("m_type",m_type);
		}


		
		//회원가입
		@Override
		public void regist(HttpServletRequest req, Model model) {
			CmemberVO vo = new CmemberVO();
			
			//기업 or 개인
			int m_type = Integer.parseInt(req.getParameter("m_type"));
			vo.setM_type(m_type);
			
			String mode = req.getParameter("mode");
			
			// 개인회원,기업회원일때 정보
			String name = req.getParameter("name");
			String uid = req.getParameter("uid");
			String passwd = req.getParameter("passwd");
			String password_que = req.getParameter("password_que");
			String password_chk = req.getParameter("password_chk");
			String jumin = req.getParameter("birth_year")+"/"+req.getParameter("birth_month")+"/"+req.getParameter("birth_day");
			String birth = req.getParameter("birth_month")+"/"+req.getParameter("birth_day");
			String sex = req.getParameter("sex");
			String email = req.getParameter("email")+"@"+req.getParameter("email_tail");
			String use_mail = req.getParameter("use_mail");
			String home = req.getParameter("home");
			String hphone = req.getParameter("hphone1")+"-"+req.getParameter("hphone2")+"-"+req.getParameter("hphone3");
			String use_sms = req.getParameter("use_sms");
			
			String phone = "";
			String phonetest = req.getParameter("phone1")+"-"+req.getParameter("phone2")+"-"+req.getParameter("phone3");
			if(!phonetest.equals("--")) {
				phone = phonetest;
			}
			
			String post = req.getParameter("post");
			String address1 = req.getParameter("address1");
			String address2 = req.getParameter("address2");		
			
			vo.setUname(name);
			vo.setUserid(uid);
			vo.setPasswd(passwd);
			vo.setPassword_que(password_que);
			vo.setPassword_chk(password_chk);
			vo.setJumin(jumin);
			vo.setBirth(birth);
			vo.setSex(sex);
			vo.setEmail(email);
			vo.setUse_mail(use_mail);
			vo.setHome(home);
			vo.setHphone(hphone);
			vo.setUse_sms(use_sms);
			vo.setPhone(phone);
			vo.setPost(post);
			vo.setAddress1(address1);
			vo.setAddress2(address2);
			
			// 기업회원일때만 추가정보 + 기업회원vo에 data넣기
			if(m_type == 2) {
				String biz_recharger = req.getParameter("biz_recharger");
				String biz_name = req.getParameter("biz_name");
				String biz_no = req.getParameter("biz_no1")+"-"+req.getParameter("biz_no2")+"-"+req.getParameter("biz_no3");
				String biz_category = req.getParameter("biz_category");
				String biz_list = req.getParameter("biz_list");
				String biz_form = req.getParameter("biz_form");
				String biz_subject = req.getParameter("biz_subject");
				String biz_phone = req.getParameter("biz_phone1")+"-"+req.getParameter("biz_phone2")+"-"+req.getParameter("biz_phone3");
				String biz_fax = req.getParameter("biz_fax1")+"-"+req.getParameter("biz_fax2")+"-"+req.getParameter("biz_fax3");
				
				String biz_email = "";
				String biz_emailtest = req.getParameter("biz_email1")+"@"+req.getParameter("biz_email2");
				if(!biz_emailtest.equals("@")) {
					biz_email = biz_emailtest;
				}
				
				String biz_home = req.getParameter("biz_home");
				String biz_post = req.getParameter("biz_post");
				String biz_address1 = req.getParameter("biz_address1");
				String biz_address2 = req.getParameter("biz_address2");
				String biz_fonundation = req.getParameter("biz_fonundation");
				int biz_men = Integer.parseInt(req.getParameter("biz_men"));
				String biz_capital = req.getParameter("biz_capital");
				String biz_selling = req.getParameter("biz_selling");
				String biz_vision = req.getParameter("biz_vision");
				String biz_history = req.getParameter("biz_history");
				
				vo.setBiz_recharger(biz_recharger);
				vo.setBiz_name(biz_name);
				vo.setBiz_no(biz_no);
				vo.setBiz_category(biz_category);
				vo.setBiz_list(biz_list);
				vo.setBiz_form(biz_form);
				vo.setBiz_subject(biz_subject);
				vo.setBiz_phone(biz_phone);
				vo.setBiz_fax(biz_fax);
				vo.setBiz_email(biz_email);
				vo.setBiz_home(biz_home);
				vo.setBiz_post(biz_post);
				vo.setBiz_address1(biz_address1);
				vo.setBiz_address2(biz_address2);
				vo.setBiz_fonundation(biz_fonundation);
				vo.setBiz_men(biz_men);
				vo.setBiz_capital(biz_capital);
				vo.setBiz_selling(biz_selling);
				vo.setBiz_vision(biz_vision);
				vo.setBiz_history(biz_history);
			}
			
			int cnt = CmemberDAO.registMember(vo);
			model.addAttribute("cnt",cnt);
			model.addAttribute("mode",mode);
		}

		// 01-13 이상의 수정
		@Override
		public void myPage(HttpServletRequest req, Model model) {
			
			CmemberVO vo  = null;
			System.out.println("a2");
			// 개인이 마이페이지 접속을 위해 세션에 저장된 개인 아아디를 불러온다.
			int m_type = Integer.parseInt(req.getParameter("m_type"));
			
			String userid= "";
			if(m_type==1) {
				 userid =  (String) req.getSession().getAttribute("ISessionId");
			}else {
				 userid =  (String) req.getSession().getAttribute("CSessionId");
			}
			System.out.println("a3:"+userid);
			System.out.println("a4:"+m_type);
			Map<String,Object> map = new HashMap<String,Object>() ;
			map.put("userid", userid);
			map.put("m_type", m_type);
			
			vo = CmemberDAO.viewMyPage(map);
			
			//주민번호 년/월/일로 자르기
			
			model.addAttribute("birth_year",vo.getJumin().substring(0, 4));
			model.addAttribute("birth_month",vo.getJumin().substring(5, 7));
			model.addAttribute("birth_day",vo.getJumin().substring(8, 10));
			
			//이메일 자르기
			String[] email = vo.getEmail().split("@");
			model.addAttribute("email",email);
			
			//연락처(휴대폰) 자르기
			String[] Hphone = vo.getHphone().split("-");
			model.addAttribute("Hphone",Hphone);
			
			//연락처 자르기
			String[] phone = vo.getPhone().split("-");
			model.addAttribute("phone",phone);
				
			//질문 사항 -- 추후 수정
			
			
			
			
			model.addAttribute("m_type",m_type);
			model.addAttribute("vo",vo);
		}

		// 01-15 이상의 수정
		@Override
		public void modifyInfo(HttpServletRequest req, Model model) {
			
			CmemberVO vo = new CmemberVO();
			System.out.println("a1");
			// 수정 폼에서 값 받아오기
			int m_type = Integer.parseInt(req.getParameter("m_type"));
			String uid = req.getParameter("uid");
			
	
			// 이전 비밀번호
			String passwd_old = req.getParameter("passwd_old");
			
			
			// 아이디와 비밀번호로 먼저 체크
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("userid", uid);
			map.put("passwd", passwd_old);
			map.put("m_type", m_type);
			
			// 아이디와 이전비밀번호 체크
			int cnt = CmemberDAO.CheckIdPw(map);
			System.out.println("cnt:"+cnt);
			if(cnt!=0) {
				
				// 신규 비밀번호
				String passwd = req.getParameter("passwd");
				String passwdre = req.getParameter("passwdre");
				
				
				System.out.println("a5");
				map.put("passwd", passwd);
				
				String password_que = req.getParameter("password_que");
				String password_chk = req.getParameter("password_chk");
				
				map.put("password_que", password_que);
				map.put("password_chk", password_chk);
				
				//주민번호 생년원일 조합
				String birth_year = req.getParameter("birth_year");
				String birth_month = req.getParameter("birth_month");
				String birth_day = req.getParameter("birth_day");
				
				String jumin = birth_year+"/"+birth_month+"/"+birth_day;
				String sex = req.getParameter("sex");
				String p_chk = req.getParameter("p_chk");
				String home = req.getParameter("home");
				
				map.put("jumin", jumin);
				map.put("sex", sex);
				map.put("p_chk", p_chk);
				map.put("home", home);
				
				//이메일 합치기
				String email = req.getParameter("email");
				String email_tail = req.getParameter("email_tail");
				
				email = email+"@"+email_tail;
				
				map.put("email", email);
				
				String use_mail = req.getParameter("use_mail");
				
				map.put("use_mail", use_mail);
				
				//연락처(휴대폰) 합치기
				String hphone1 = req.getParameter("hphone1");
				String hphone2 = req.getParameter("hphone2");
				String hphone3 = req.getParameter("hphone3");
				
				String hphone = hphone1+"-"+hphone2+"-"+hphone3;
				
				String use_sms = req.getParameter("use_sms");
				
				map.put("hphone", hphone);
				map.put("use_sms", use_sms);
				
				//연락처 합치기
				String phone1 = req.getParameter("phone1");
				String phone2 = req.getParameter("phone2");
				String phone3 = req.getParameter("phone3");
				
				String phone = phone1+"-"+phone2+"-"+phone3;
				
				String post = req.getParameter("post");
				String address1 = req.getParameter("address1");
				String address2 = req.getParameter("address2");
				
				map.put("phone", phone);
				map.put("post", post);
				map.put("address1", address1);
				map.put("address2", address2);
				System.out.println("a6");
				
				// 기업정보
				if(m_type==2) {
				String biz_recharger = req.getParameter("biz_recharger");
				String biz_name = req.getParameter("biz_name");
				String biz_no = req.getParameter("biz_no1") + "-" + req.getParameter("biz_no1") + "-" + req.getParameter("biz_no1");
				String biz_category = req.getParameter("biz_category");
				String biz_list = req.getParameter("biz_list");
				String biz_form = req.getParameter("biz_form");
				String biz_subject = req.getParameter("biz_subject");
				String biz_phone = req.getParameter("biz_phone1")+"-"+req.getParameter("biz_phone2")+"-"+req.getParameter("biz_phone3");
				String biz_fax = req.getParameter("biz_fax1")+"-"+req.getParameter("biz_fax2")+"-"+req.getParameter("biz_fax3");
				String biz_email = req.getParameter("biz_email")+"@"+req.getParameter("biz_email_tail");
				String biz_home	= req.getParameter("biz_home");
				String biz_post = req.getParameter("biz_post");
				String biz_address1 = req.getParameter("biz_address1");
				String biz_address2 = req.getParameter("biz_address2");
				String biz_fonundation = req.getParameter("biz_fonundation");
				int biz_men = Integer.parseInt(req.getParameter("biz_men"));
				String biz_capital = req.getParameter("biz_capital");
				String biz_selling = req.getParameter("biz_selling");
				// * 회사로고, 회사사진, 개요/비전 추후 수정
				
				map.put("biz_recharger",biz_recharger);
				map.put("biz_name", biz_name);
				map.put("biz_no", biz_no);
				map.put("biz_category", biz_category);
				map.put("biz_list", biz_list);
				map.put("biz_form", biz_form);
				map.put("biz_subject", biz_subject);
				map.put("biz_phone", biz_phone);
				map.put("biz_fax", biz_fax);
				map.put("biz_email", biz_email);
				map.put("biz_home", biz_home);
				map.put("biz_post", biz_post);
				map.put("biz_address1", biz_address1);
				map.put("biz_address2", biz_address2);
				map.put("biz_fonundation", biz_fonundation);
				map.put("biz_men", biz_men);
				map.put("biz_capital", biz_capital);
				map.put("biz_selling", biz_selling);
				
				}
				//수정처리
				CmemberDAO.modifyMyPage(map);
				//업데이트 된 후 개인정보 뷰 하기 
				CmemberDAO.viewMyPage(map);
				model.addAttribute("vo",vo);
				
				// 비밀번호 와 재입력 비교 -- 나중에 스크립트로 처리 수정 
				if(passwd != passwdre) {
					model.addAttribute("cnt",-1);
					
				}
				
			
				System.out.println("a8");
			}else {
				 
				
			}
				model.addAttribute("m_type",m_type);
		}
		
		
	   //회원탈퇴정보확인 1.16 이정훈
	   @Override
	   public void deleteView(HttpServletRequest req, Model model) {
	      int m_type = Integer.parseInt(req.getParameter("m_type"));
	      String mode = req.getParameter("mode");
	      String userid = "";
	      if(m_type ==1) {
	         userid = (String) req.getSession().getAttribute("ISessionId");
	      }else {
	         userid = (String) req.getSession().getAttribute("CSessionId");
	      }
	      
	      Map<String , Object> map = new HashMap<String,Object>();
	      map.put("m_type", m_type);
	      map.put("userid", userid);
	      
	      CmemberVO vo = new CmemberVO();
	      
	      vo = CmemberDAO.deleteMemView(map);

	      model.addAttribute("vo",vo);
	      model.addAttribute("m_type",m_type);
	      model.addAttribute("mode",mode);            
	   }

	   
	   //회원탈퇴처리 1.16
	   @Override
	   public void deleteInfo(HttpServletRequest req, Model model) {
	      String userid = req.getParameter("userid");
	      int m_type = Integer.parseInt(req.getParameter("m_type"));
	      String passwd = req.getParameter("passwd");
	      
	      Map<String, Object> map = new HashMap<String, Object>();
	      map.put("m_type", m_type);
	      map.put("userid", userid);
	      map.put("passwd", passwd);
	      
	      int cnt = CmemberDAO.deleteMemInfo(map);
	      req.getSession().setAttribute("ISessionId", null);
	      req.getSession().setAttribute("CSessionId", null);
	      model.addAttribute("cnt",cnt);      
	   }

}
