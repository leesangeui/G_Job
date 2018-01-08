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
	//����� 123
	//����� �α���, �α׾ƿ�ó�� i love you 1.08
	@RequestMapping(value="Amain")
	public String loginPro(HttpServletRequest req, Model model) {
			
			
		amemberService.loginPro(req,model);
		return "admin/adminmain";
	}
	//�α׾ƿ�
	@RequestMapping(value="Alogout")
	public String logout(HttpServletRequest req, Model model) {
			
		req.getSession().setAttribute("ASessionId", null);
		
		
		return "redirect:/Amain";
	}

}
