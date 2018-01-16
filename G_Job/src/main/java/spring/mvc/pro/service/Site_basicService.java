package spring.mvc.pro.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import spring.mvc.pro.vo.Site_basicVO;

public interface Site_basicService {
	
	//사이트 운영관리 업데이트
	public void envSetting_update(HttpServletRequest req, Model model);
	
	//사이트 운영관리 내용 출력
	public void envSetting_view(HttpServletRequest req, Model model) ;
	
	//사이트 운영관리 로고 수정
	public void regist_photo(MultipartHttpServletRequest req, Model model);
	
	
}
