package spring.mvc.pro.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.pro.persistence.CmemberDAOImpl;

@Service
public class CmemberServiceImpl implements CmemberService {

	@Autowired
	CmemberDAOImpl CmemberDAO;

	@Override
	public void loginPro(HttpServletRequest req, Model model) {
		
		// 값 받아오기
		
		if(req.getParameter("id") != null) {
			
			String strId = req.getParameter("id");
			String strPwd = req.getParameter("pwd");
			int strType = Integer.parseInt(req.getParameter("type"));
			
			Map<String,Object> map = new HashMap<String,Object>() ;
			
			map.put("strId",strId);
			map.put("strPwd",strPwd);
			map.put("strType", strType);
			
			int cnt = 0 ;
			
			cnt = CmemberDAO.loginPro(map);
			
			// 아이디와 비밀번호가 일치
			if(cnt==1) {
				
				if(strType==1) {
					
					req.getSession().setAttribute("ISessionId", strId);
					
				}else if(strType==2) {
					
					req.getSession().setAttribute("CSessionId", strId);
				}
				
			// 아이디와 비밀번호가 불일치	
			}else {
				req.getSession().setAttribute("ISessionId", null);
				req.getSession().setAttribute("CSessionId", null);
			}
			model.addAttribute("cnt",cnt);
		}
	}
}
