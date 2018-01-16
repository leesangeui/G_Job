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

	@Override
	public void change(HttpServletRequest req, Model model) {
		String strId = req.getParameter("change_uid");
		String admin_id = req.getParameter("admin_id");
		String passwd = req.getParameter("passwd");
		String passwd_re = req.getParameter("passwd_re");
		int selectCnt=-1;
		int cnt = 0;
		/*
		cnt =-1  비밀번호 불일치
		cnt = 0   아이디 없음
		cnt = 1  일치
		cnt = 2	 비밀번호 불일치
		cnt = 3	 동일 아이디 존재
		*/
		 
		if(passwd.equals(passwd_re)) {	
			Map<String,Object> map = new HashMap<String,Object>() ;
			
			map.put("strId",strId);			
			
			selectCnt = AmemberDAO.loginPro(map);
			
			
			if(selectCnt==1) {
				if(!strId.equals(admin_id)) {
					map.put("strId",admin_id);
					selectCnt = AmemberDAO.loginPro(map);
					map.put("strId",strId);
					if(selectCnt==0) {					
						map.put("strUpdateId",admin_id);
						map.put("strPwd",passwd);
						cnt = AmemberDAO.updateAdmin(map);
					}else {
						cnt=3;
					}
				}else {
					map.put("strId",strId);
					map.put("strUpdateId",admin_id);
					map.put("strPwd",passwd);
					cnt = AmemberDAO.updateAdmin(map);
				}
				
			}
		}
		model.addAttribute("cnt", cnt);
		
	}
}
