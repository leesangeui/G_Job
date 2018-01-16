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
		
		System.out.println("����ſ��");
		return "Cust/Custmain";
	}
	//����� �α���
	@RequestMapping(value="Cust/login")
	public String loginPro(HttpServletRequest req, Model model  ) {
		
		
		String return_url = req.getParameter("return_url");
		System.out.println(return_url);
		cmemberService.loginPro(req,model);
		 
		System.out.println("�α���ſ��");
		//�α��� �õ��ϴ� uri���� �α��� 
		return_url = return_url.substring(19,return_url.length()-4);
		System.out.println(return_url);
		//���ο��� �α��ν� ������������ �̵�
		int m_type = Integer.parseInt(req.getParameter("m_type"));
		if(return_url.equals("Cust/Custmain")) {
			return_url = "job_user/indiService";
			
			
		}
		
		model.addAttribute("return_url",return_url);
		System.out.println(return_url);
		return "Cust/loginPro";
	}
	
	// �α׾ƿ� 
	@RequestMapping(value="Cust/logout")
	public String loginOut(HttpServletRequest req, Model model ) {
		
		req.getSession().setAttribute("ISessionId", null);
		req.getSession().setAttribute("CSessionId", null);
		
		return "redirect:../Cust/main";
	}
	// ���� ������ �α׾ƿ� 
	@RequestMapping(value="Cust/Cust/logout")
	public String mypageloginOut(HttpServletRequest req, Model model ) {

		
		req.getSession().setAttribute("ISessionId", null);
		req.getSession().setAttribute("CSessionId", null);
		
		return "redirect:/Cust/main";
	}
	
	// ���̵�.��й�ȣ ã��
	@RequestMapping(value="Cust/Find")
	public String Find(HttpServletRequest req, Model model) {
		System.out.println("cust/member/find");
		
		return "Cust/member/Find";
	}
	// ���̵� ã�� ó��
	@RequestMapping(value="Cust/FindIdPro")
	public String FindIdPro(HttpServletRequest req, Model model) {
		
		cmemberService.FindIdPro(req, model);
		
		return "Cust/member/Find";
	}
	// ��й�ȣ ã�� ó��
	@RequestMapping(value="Cust/FindPwPro")
	public String FindPwPro(HttpServletRequest req, Model model) {
		
		cmemberService.FindPwPro(req, model);
		return "Cust/member/Find";
	}
	
	
    // ȸ������
    @RequestMapping(value="Cust/member")
    public String member(HttpServletRequest req, Model model) {
       System.out.println("Cust/member");
       
       return "Cust/member/member";
    }
    
    // ����������
    @RequestMapping(value="Cust/job_user/indiService")
    public String indiService(HttpServletRequest req, Model model ,HttpServletResponse response ) {
    	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0); // Proxies.
		System.out.println("a1");
		cmemberService.myPage(req, model);
		
    	return "Cust/job_user/indiService/indiService";
    }
    // �������� ������
    @RequestMapping(value="Cust/job_user/Minfomation")
    public String Minfomation(HttpServletRequest req, Model model ,HttpServletResponse response) {
    	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0); // Proxies.
		cmemberService.myPage(req, model);
    	return "Cust/job_user/indiService/Minfomation";
    }
    
    // �������� ����ó��
    @RequestMapping(value="Cust/job_user/ModifyInfo")
    public String ModifyInfo(HttpServletRequest req, Model model) {
    	
    	cmemberService.modifyInfo(req,model);
  
    	
    	return "Cust/job_user/indiService/ModifyInfoPro";
    }
    
    
 // ���� - ������  01.10
 	// ��� �����ϱ�
 	@RequestMapping(value="Cust/agree")
 	public String agree(HttpServletRequest req, Model model) {
 		System.out.println("Cust/agree");	
 		
 		// ȸ����� �ҷ�����
 		cmemberService.Siteterm(req, model);
 		
 		return "Cust/member/agree";
 	}
 	// ȸ������ ��
 	@RequestMapping(value="Cust/join")
 	public String join(HttpServletRequest req, Model model) {
 		System.out.println("Cust/join");
 		
 		int m_type = Integer.parseInt(req.getParameter("m_type"));
 		model.addAttribute("m_type",m_type);
 		
 		return "Cust/member/join";
 	}
 	// ���� - ������  01.10 ��
 	
 	// ���� - ������ 01.11
 	// ȸ������ ���̵� �ߺ�Ȯ��
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
