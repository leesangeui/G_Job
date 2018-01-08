package spring.mvc.pro.controller;

import javax.servlet.http.HttpServletRequest;

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
	public String main(HttpServletRequest req, Model model) {
		
		return "Cust/Custmain";
	}
	//사용자 로그인
	@RequestMapping(value="Cust/main")
	public String loginPro(HttpServletRequest req, Model model) {
		
		
		cmemberService.loginPro(req,model);
		return "Cust/Custmain";
	}
	// 로그아웃 
	@RequestMapping(value="Cust/logout")
	public String loginOut(HttpServletRequest req, Model model) {
		
		req.getSession().setAttribute("ISessionId", null);
		req.getSession().setAttribute("CSessionId", null);
		
		return "redirect:../Cust/main";
	}
}
