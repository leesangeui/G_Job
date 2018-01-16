package spring.mvc.pro.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.pro.service.CmemberServiceImpl;

@Controller
public class CustController {

	@Autowired
	CmemberServiceImpl cmemberService;
	
	
	@RequestMapping(value="")
	public String main_(HttpServletRequest req, Model model) {
		
		return "Cust/Custmain";
	}
	@RequestMapping(value="Cust/main")
	public String main(HttpServletRequest req, Model model  ,HttpServletResponse response) {
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0); // Proxies.
		
		System.out.println("메인탓니");
		return "Cust/Custmain";
	}
	//사용자 로그인
	@RequestMapping(value="Cust/login")
	public String loginPro(HttpServletRequest req, Model model  ) {
		
		
		String return_url = req.getParameter("return_url");
		System.out.println(return_url);
		cmemberService.loginPro(req,model);
		 
		System.out.println("로그인탓니");
		//로그인 시도하는 uri에서 로그인 
		return_url = return_url.substring(19,return_url.length()-4);
		System.out.println(return_url);
		//메인에서 로그인시 마이페이지로 이동
		int m_type = Integer.parseInt(req.getParameter("m_type"));
		if(return_url.equals("Cust/Custmain")) {
			return_url = "job_user/indiService";
			
			
		}
		
		model.addAttribute("return_url",return_url);
		System.out.println(return_url);
		return "Cust/loginPro";
	}
	
	// 로그아웃 
	@RequestMapping(value="Cust/logout")
	public String loginOut(HttpServletRequest req, Model model ) {
		
		req.getSession().setAttribute("ISessionId", null);
		req.getSession().setAttribute("CSessionId", null);
		
		return "redirect:../Cust/main";
	}
	// 마이 페이지 로그아웃 
	@RequestMapping(value="Cust/Cust/logout")
	public String mypageloginOut(HttpServletRequest req, Model model ) {

		
		req.getSession().setAttribute("ISessionId", null);
		req.getSession().setAttribute("CSessionId", null);
		
		return "redirect:/Cust/main";
	}
	
	// 아이디.비밀번호 찾기
	@RequestMapping(value="Cust/Find")
	public String Find(HttpServletRequest req, Model model) {
		System.out.println("cust/member/find");
		
		return "Cust/member/Find";
	}
	// 아이디 찾기 처리
	@RequestMapping(value="Cust/FindIdPro")
	public String FindIdPro(HttpServletRequest req, Model model) {
		
		cmemberService.FindIdPro(req, model);
		
		return "Cust/member/Find";
	}
	// 비밀번호 찾기 처리
	@RequestMapping(value="Cust/FindPwPro")
	public String FindPwPro(HttpServletRequest req, Model model) {
		
		cmemberService.FindPwPro(req, model);
		return "Cust/member/Find";
	}
	
	
    // 회원가입
    @RequestMapping(value="Cust/member")
    public String member(HttpServletRequest req, Model model) {
       System.out.println("Cust/member");
       
       return "Cust/member/member";
    }
    
    // 마이페이지
    @RequestMapping(value="Cust/job_user/indiService")
    public String indiService(HttpServletRequest req, Model model ,HttpServletResponse response ) {
    	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0); // Proxies.
		System.out.println("a1");
		cmemberService.myPage(req, model);
		
    	return "Cust/job_user/indiService/indiService";
    }
    // 개인정보 수정뷰
    @RequestMapping(value="Cust/job_user/Minfomation")
    public String Minfomation(HttpServletRequest req, Model model ,HttpServletResponse response) {
    	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0); // Proxies.
		cmemberService.myPage(req, model);
    	return "Cust/job_user/indiService/Minfomation";
    }
    
    // 개인정보 수정처리
    @RequestMapping(value="Cust/job_user/ModifyInfo")
    public String ModifyInfo(HttpServletRequest req, Model model) {
    	
    	cmemberService.modifyInfo(req,model);
  
    	
    	return "Cust/job_user/indiService/ModifyInfoPro";
    }
    
    
 // 수정 - 이정훈  01.10
 	// 약관 동의하기
 	@RequestMapping(value="Cust/agree")
 	public String agree(HttpServletRequest req, Model model) {
 		System.out.println("Cust/agree");	
 		
 		// 회원약관 불러오기
 		cmemberService.Siteterm(req, model);
 		
 		return "Cust/member/agree";
 	}
 	// 회원가입 폼
 	@RequestMapping(value="Cust/join")
 	public String join(HttpServletRequest req, Model model) {
 		System.out.println("Cust/join");
 		
 		int m_type = Integer.parseInt(req.getParameter("m_type"));
 		model.addAttribute("m_type",m_type);
 		
 		return "Cust/member/join";
 	}
 	// 수정 - 이정훈  01.10 끝
 	
 	// 수정 - 이정훈 01.11
 	// 회원가입 아이디 중복확인
 	@RequestMapping(value="Cust/confirmId")
 	public String confirmId(HttpServletRequest req, Model model) {
 		System.out.println("Cust/confirmId");
 		
 		cmemberService.confirmId(req, model);
 		return "Cust/member/confirmId";
 	}
 	@RequestMapping(value="Cust/regist")
 	public String regist(HttpServletRequest req, Model model) {
 		System.out.println("Cust/regist");
 		
 		cmemberService.regist(req, model);
 		return "Cust/member/regist";
 	}
}
