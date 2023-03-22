package com.ezen.ezenmarket.chat.service;

import org.springframework.web.multipart.MultipartFile;

public interface FileTransferService {
	
	
	String generateHash(MultipartFile file);
	
	String uploadToTomcatServer(MultipartFile file);
}
