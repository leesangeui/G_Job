package spring.mvc.pro.persistence;

import java.util.ArrayList;
import java.util.Map;


import spring.mvc.pro.vo.CmemberVO;
import spring.mvc.pro.vo.Site_basicVO;
public interface CmemberDAO {

	//�α��� ó��
	public int loginPro(Map<String,Object> map);
	
	//���̵� ã�� ó��
	public String FindId(Map<String,Object> map);
	
	//��й�ȣ ã�� ó��
	public String FindPw(Map<String,Object> map);
	
	//ȸ����� �ҷ�����
	public Site_basicVO getSiteterm();
	
	//���̵� �ߺ�Ȯ���ϱ�
	public int custConfirmId(Map<String,Object> map);
	
	// ȸ������
	public int registMember(CmemberVO vo);
	
	// ���������� ��ȸ 01-13 �̻��� ����
	public CmemberVO viewMyPage(Map<String,Object> map);
	
	// �������� ���� 01-15 �̻��� ����
	public void modifyMyPage(Map<String,Object> map);
	
	// ���̵� ��й�ȣ üũ 01-15 �̻��� ����
	public int CheckIdPw(Map<String,Object> map);
	
    // ȸ��Ż������ 1.16 ������
    public CmemberVO deleteMemView(Map<String,Object> map);
   
    // ȸ��Ż��ó�� 1.16
    public int deleteMemInfo(Map<String, Object> map);
}
