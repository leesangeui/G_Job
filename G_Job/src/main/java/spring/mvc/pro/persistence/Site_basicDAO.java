package spring.mvc.pro.persistence;

import java.util.Map;

import spring.mvc.pro.vo.Site_basicVO;

public interface Site_basicDAO {
	//�α��� ó��
	public int updatePor(Map<String,Object> map);
	//�α��� ó��
	public Site_basicVO selectPro();
	

}
