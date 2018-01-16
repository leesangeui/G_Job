package spring.mvc.pro.persistence;

import java.util.Map;

public interface AmemberDAO {

	//로그인 처리
	public int loginPro(Map<String,Object> map);
	
	//관리자 아이디 비밀번호 변경
	public int updateAdmin(Map<String,Object> map);
	
}
