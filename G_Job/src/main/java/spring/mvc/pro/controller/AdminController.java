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
	
	/*��� �߰�*/
	@Autowired
	Site_basicServiceImpl  site_basicService;
	
	/*��� �߰� ��*/
	
	//����� 123
	//����� �α���, �α׾ƿ�ó�� i love you 1.08 
	@RequestMapping(value="Amain")
	public String loginPro(HttpServletRequest req, Model model) {
		amemberService.loginPro(req,model);
		/*��� ����*/
		return "admin/main/adminmain";
	}
	//�α׾ƿ�
	@RequestMapping(value="Alogout")
	public String logout(HttpServletRequest req, Model model) {
		req.getSession().setAttribute("ASessionId", null);
		return "redirect:/Amain";
	}
	/*��� �߰�*/
	
	//������/ȯ�漳������/���̵�/��й�ȣ ����
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
	
	//������/ȯ�漳������/�ΰ����� ����
	@RequestMapping(value="admin/envSetting/admin_list")
	public String inputTerm_admin_list(HttpServletRequest req, Model model) {
		//amemberService.loginPro(req,model);
		return "admin/envSetting/admin_list";
	}
	//������/ȯ�漳������/����Ʈ ����� �⺻����
	@RequestMapping(value="admin/envSetting/base_environment")
	public String inputTerm_base_environment(HttpServletRequest req, Model model) {
		site_basicService.envSetting_view(req,model);
		return "admin/envSetting/base_environment";
	}
	
	//������/ȯ�漳������/����Ʈ ����� �⺻���� �����۾�
	@RequestMapping(value="admin/envSetting/regist")
	public String inputTerm_regist(HttpServletRequest req, Model model) {
		site_basicService.envSetting_update(req,model);
		return "admin/envSetting/regist";
	}
	
	//������/ȯ�漳������/����Ʈ �����  �ΰ���
	@RequestMapping(value="admin/envSetting/logo")
	public String inputTerm_logo(HttpServletRequest req, Model model) {
		site_basicService.envSetting_view(req,model);
		return "admin/envSetting/logo";
	}
	//������/ȯ�漳������/����Ʈ ����� �⺻���� �����۾�
	@RequestMapping(value="admin/envSetting/regist_photo")
	public String inputTerm_regist_photo(MultipartHttpServletRequest req, Model model) {
		site_basicService.regist_photo(req,model);
		return "admin/envSetting/regist_photo";
	}
	//������/ȯ�漳������/����Ʈ �����  ī�Ƕ���Ʈ���
		@RequestMapping(value="admin/envSetting/copyright")
		public String inputTerm_copyright(HttpServletRequest req, Model model) {
			site_basicService.envSetting_view(req,model);
			String code =req.getParameter("code");
			model.addAttribute("code", code);
			return "admin/envSetting/copyright";
		}
	
	//������/ȯ�漳������/����� ����
	@RequestMapping(value="admin/envSetting/config_list2")
	public String config_list2(HttpServletRequest req, Model model) {
		//amemberService.loginPro(req,model);
		return "admin/envSetting/config_list2";
	}
	//������/ȯ�漳������/������ ��°ټ�
	@RequestMapping(value="admin/envSetting/config_num")
	public String config_num(HttpServletRequest req, Model model) {
		//amemberService.loginPro(req,model);
		return "admin/envSetting/config_num";
	}

	/*��� �߰� ��*/
	
	
}
