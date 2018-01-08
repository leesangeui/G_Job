package spring.mvc.pro.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.pro.service.AmemberServiceImpl;



@Controller
public class AdminController {

	@Autowired
	AmemberServiceImpl amemberService;
	//배고파 123
	//사용자 로그인, 로그아웃처리 i love you 1.08
	@RequestMapping(value="Amain")
	public String loginPro(HttpServletRequest req, Model model) {
			
			
		amemberService.loginPro(req,model);
		return "admin/adminmain";
	}
	//로그아웃
	@RequestMapping(value="Alogout")
	public String logout(HttpServletRequest req, Model model) {
			
		req.getSession().setAttribute("ASessionId", null);
		
		
		return "redirect:/Amain";
	}

}
