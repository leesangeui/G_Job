package spring.mvc.pro.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import spring.mvc.pro.vo.Site_basicVO;

public interface Site_basicService {
	
	//����Ʈ ����� ������Ʈ
	public void envSetting_update(HttpServletRequest req, Model model);
	
	//����Ʈ ����� ���� ���
	public void envSetting_view(HttpServletRequest req, Model model) ;
	
	//����Ʈ ����� �ΰ� ����
	public void regist_photo(MultipartHttpServletRequest req, Model model);
	
	
}
