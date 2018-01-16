package spring.mvc.pro.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import spring.mvc.pro.persistence.Site_basicDAOImpl;
import spring.mvc.pro.vo.Site_basicVO;

@Service
public class Site_basicServiceImpl implements Site_basicService {
	
	@Autowired
	Site_basicDAOImpl site_basicDAO;
	
	@Override
	public void envSetting_update(HttpServletRequest req, Model model) {
		String mode =req.getParameter("mode");
		String content =req.getParameter("content");
		Map<String,Object> map = new HashMap<String,Object>() ;		
		map.put("mode",mode);
		map.put("content",content);
		int cnt = 0 ;
		cnt=site_basicDAO.updatePor(map);
		model.addAttribute("cnt", cnt);
		model.addAttribute("mode", mode);		
	}

	@Override
	public void envSetting_view(HttpServletRequest req, Model model) {
		//int cnt =0;
		Site_basicVO dto = new Site_basicVO();
		dto=site_basicDAO.selectPro();
		model.addAttribute("dto", dto);
		
	}

	@Override
	public void regist_photo(MultipartHttpServletRequest req, Model model) {
		MultipartFile file = req.getFile("content");
	       
        String saveDir = req.getRealPath("/resources/upload/logo/"); //���� ���(C:\Dev\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\SPRING_BMS_Project\resources\images\)
        
        String realDir="C:\\dev\\git\\G_Job\\G_Job\\src\\main\\webapp\\resources\\upload\\logo\\"; // ���� ���
        try {
        	System.out.println(req.getFile("content"));
        	if(!file.isEmpty()) {
        		String sign =req.getParameter("old_photo");
				if(!sign.equals("")) {
					new File(realDir +  sign).delete();
					System.out.println("���ϻ���");
				}
				String savedName = file.getOriginalFilename();
				savedName = uploadFile(savedName, file.getBytes());
				System.out.println("���ϸ� : "+ savedName);
	            file.transferTo(new File(saveDir+savedName));
	            
	            FileInputStream fis = new FileInputStream(saveDir + savedName);
	            FileOutputStream fos = new FileOutputStream(realDir + savedName);
	            
	            int data = 0;
	            
	            while((data = fis.read()) != -1) {
	                fos.write(data);
	            }
	            fis.close();
	            fos.close();
	            
	            System.out.println("mode : " +req.getParameter("mode"));
				System.out.println("���ϸ� : " +savedName);
				
				Map<String,Object> map = new HashMap<String,Object>() ;		
				map.put("mode",req.getParameter("mode"));
				map.put("content",savedName);
				int cnt = site_basicDAO.updatePor(map);
				
	            model.addAttribute("cnt", cnt);
        	} 
        } catch(Exception e) {
            e.printStackTrace();
        }	
		
	}

	
	   // ���ϸ� �������� �޼���
    private String uploadFile(String originalName, byte[] fileData) throws Exception{
        // uuid ����(Universal Unique IDentifier, ���� ���� �ĺ���)
        UUID uuid = UUID.randomUUID();
        // ��������+�����̸� ����
        String uploadPath ="C:\\dev\\git\\G_Job\\G_Job\\src\\main\\webapp\\resources\\upload\\logo\\";
        String savedName = uuid.toString()+"_"+originalName;
        File target = new File(uploadPath, savedName);
        // �ӽõ��丮�� ����� ���ε�� ������ ������ ���丮�� ����
        // FileCopyUtils.copy(����Ʈ�迭, ���ϰ�ü)
        FileCopyUtils.copy(fileData, target);
        return savedName;
    }

}
