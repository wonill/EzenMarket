package com.ezen.ezenmarket.chat.service.impl;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.security.MessageDigest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ezen.ezenmarket.chat.service.FileTransferService;

@Service
public class FileTransferServiceImpl implements FileTransferService{
	
	
	@Override
	public String generateHash(MultipartFile file) {
		 // 파일의 바이트 스트림 생성
	    try {
	    	InputStream is = file.getInputStream();
	    

	    // SHA-256 해시 생성
	    MessageDigest digest = MessageDigest.getInstance("SHA-256");
	    byte[] buffer = new byte[4096];
	    int bytesRead;
	    while ((bytesRead = is.read(buffer)) != -1) {
	        digest.update(buffer, 0, bytesRead);
	    }
	    byte[] hash = digest.digest();

	    // 바이트 배열을 16진수 문자열로 변환
	    StringBuffer sb = new StringBuffer();
	    for (int i = 0; i < hash.length; i++) {
	        sb.append(Integer.toString((hash[i] & 0xff) + 0x100, 16).substring(1));
	    }

	    return sb.toString();
	    } catch (Exception e){
	    	return "";
	    }
	}
	
	// 톰캣서버에 업로드하고 데이터베이스에 저장할 이미지 이름을 반환
	@Override
	public String uploadToTomcatServer(MultipartFile file) {
		 String imgName = generateHash(file) + "." + FilenameUtils.getExtension(file.getOriginalFilename());
		 
		   if (!file.isEmpty()) {
			    try {
			        byte[] bytes = file.getBytes();

			        // Creating the directory to store file
			        String rootPath = System.getProperty("catalina.home");
			        File dir = new File(rootPath + File.separator + "tmpFiles");
			        if (!dir.exists())
			            dir.mkdirs();
			        // Create the file on server
			        File serverFile = new File(dir.getAbsolutePath()
			                + File.separator + imgName);
			        
			        BufferedOutputStream stream = new BufferedOutputStream(
			                new FileOutputStream(serverFile));
			        stream.write(bytes);
			        stream.close();
			    } catch (Exception e) {
			        e.printStackTrace();
			    }
			} 
		 
		   return imgName;
		
	}

}
