package spring.mvc.pro.persistence;

import java.util.Map;

import spring.mvc.pro.vo.Site_basicVO;

public interface Site_basicDAO {
	//로그인 처리
	public int updatePor(Map<String,Object> map);
	//로그인 처리
	public Site_basicVO selectPro();
	

}
