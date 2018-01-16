package spring.mvc.pro.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import spring.mvc.pro.service.AmemberServiceImpl;
import spring.mvc.pro.service.Site_basicServiceImpl;



@Controller
public class AdminController {

	@Autowired
	AmemberServiceImpl amemberService;
	
	/*경범 추가*/
	@Autowired
	Site_basicServiceImpl  site_basicService;
	
	/*경범 추가 끝*/
	
	//배고파 123
	//사용자 로그인, 로그아웃처리 i love you 1.08 
	@RequestMapping(value="Amain")
	public String loginPro(HttpServletRequest req, Model model) {
		amemberService.loginPro(req,model);
		/*경범 수정*/
		return "admin/main/adminmain";
	}
	//로그아웃
	@RequestMapping(value="Alogout")
	public String logout(HttpServletRequest req, Model model) {
		req.getSession().setAttribute("ASessionId", null);
		return "redirect:/Amain";
	}
	/*경범 추가*/
	
	//관리자/환경설정관리/아이디/비밀번호 설정
	@RequestMapping(value="admin/envSetting/admin_change")
	public String inputTerm_admin_change(HttpServletRequest req, Model model) {
		//amemberService.loginPro(req,model);
		return "admin/envSetting/admin_change";
	}
	@RequestMapping(value="admin/envSetting/change")
	public String inputTerm_change(HttpServletRequest req, Model model) {
		amemberService.change(req,model);
		return "admin/envSetting/change";
	}	
	
	//관리자/환경설정관리/부관리자 설정
	@RequestMapping(value="admin/envSetting/admin_list")
	public String inputTerm_admin_list(HttpServletRequest req, Model model) {
		//amemberService.loginPro(req,model);
		return "admin/envSetting/admin_list";
	}
	//관리자/환경설정관리/사이트 운영관리 기본설정
	@RequestMapping(value="admin/envSetting/base_environment")
	public String inputTerm_base_environment(HttpServletRequest req, Model model) {
		site_basicService.envSetting_view(req,model);
		return "admin/envSetting/base_environment";
	}
	
	//관리자/환경설정관리/사이트 운영관리 기본설정 수정작업
	@RequestMapping(value="admin/envSetting/regist")
	public String inputTerm_regist(HttpServletRequest req, Model model) {
		site_basicService.envSetting_update(req,model);
		return "admin/envSetting/regist";
	}
	
	//관리자/환경설정관리/사이트 운영관리  로고등록
	@RequestMapping(value="admin/envSetting/logo")
	public String inputTerm_logo(HttpServletRequest req, Model model) {
		site_basicService.envSetting_view(req,model);
		return "admin/envSetting/logo";
	}
	//관리자/환경설정관리/사이트 운영관리 기본설정 수정작업
	@RequestMapping(value="admin/envSetting/regist_photo")
	public String inputTerm_regist_photo(MultipartHttpServletRequest req, Model model) {
		site_basicService.regist_photo(req,model);
		return "admin/envSetting/regist_photo";
	}
	//관리자/환경설정관리/사이트 운영관리  카피라이트등록
		@RequestMapping(value="admin/envSetting/copyright")
		public String inputTerm_copyright(HttpServletRequest req, Model model) {
			site_basicService.envSetting_view(req,model);
			String code =req.getParameter("code");
			model.addAttribute("code", code);
			return "admin/envSetting/copyright";
		}
	
	//관리자/환경설정관리/등록폼 설정
	@RequestMapping(value="admin/envSetting/config_list2")
	public String config_list2(HttpServletRequest req, Model model) {
		//amemberService.loginPro(req,model);
		return "admin/envSetting/config_list2";
	}
	//관리자/환경설정관리/페이지 출력겟수
	@RequestMapping(value="admin/envSetting/config_num")
	public String config_num(HttpServletRequest req, Model model) {
		//amemberService.loginPro(req,model);
		return "admin/envSetting/config_num";
	}

	/*경범 추가 끝*/
	
	
}
