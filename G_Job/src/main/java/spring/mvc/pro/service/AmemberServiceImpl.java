package spring.mvc.pro.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.pro.persistence.AmemberDAOImpl;

@Service
public class AmemberServiceImpl implements AmemberService {

	@Autowired
	AmemberDAOImpl AmemberDAO;

	@Override
	public void loginPro(HttpServletRequest req, Model model) {
		// TODO Auto-generated method stub
	
		if(req.getParameter("id") != null) {
			
			String strId = req.getParameter("id");
			String strPwd = req.getParameter("pwd");
			
			
			Map<String,Object> map = new HashMap<String,Object>() ;
			
			map.put("strId",strId);
			map.put("strPwd",strPwd);
			
			
			int cnt = 0 ;
			
			cnt = AmemberDAO.loginPro(map);
			
			// 아이디와 비밀번호가 일치
			if(cnt==1) {
				req.getSession().setAttribute("ASessionId", strId);
			// 불일치
			}else {
				req.getSession().setAttribute("ASessionId", null);
			}
			
		}
	
	}
}
