package spring.mvc.pro.persistence;

import java.util.Map;

public interface AmemberDAO {

	//�α��� ó��
	public int loginPro(Map<String,Object> map);
	
	//������ ���̵� ��й�ȣ ����
	public int updateAdmin(Map<String,Object> map);
	
}
