package spring.mvc.pro.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface CmemberService {

	//�α��� ó��
	public void loginPro(HttpServletRequest req, Model model);
	
	//�ƾƵ� ã��
	public void FindIdPro(HttpServletRequest req, Model model);
	
	//��й�ȣ ã��
	public void FindPwPro(HttpServletRequest req, Model model);
	
	//ȸ����� �ҷ�����
	public void Siteterm(HttpServletRequest req, Model model);
	
	//���̵� �ߺ�Ȯ���ϱ�
	public void confirmId(HttpServletRequest req, Model model);
	
	//ȸ������
	public void regist(HttpServletRequest req, Model model);
	
	//���������� 01-13 �̻��� ����
	public void myPage(HttpServletRequest req, Model model);
	
	//���������� 01-15 �̻��� ����
	public void modifyInfo(HttpServletRequest req, Model model);
	
   //ȸ��Ż������Ȯ�� 1.16 ������
   public void deleteView(HttpServletRequest req, Model model);
   
   //ȸ��Ż�� ó�� 1.16
   public void deleteInfo(HttpServletRequest req, Model model);
}
