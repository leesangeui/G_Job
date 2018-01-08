package spring.mvc.pro.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface AmemberService {

	//로그인 처리
		public void loginPro(HttpServletRequest req, Model model);
}
