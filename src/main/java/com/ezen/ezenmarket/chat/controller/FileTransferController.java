package com.ezen.ezenmarket.chat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.ezen.ezenmarket.chat.service.FileTransferService;

@RestController
public class FileTransferController {
	
	@Autowired
	FileTransferService fileTransferService;
	
	@PostMapping(value = {"/chat/imgUpload"}, produces = "text/plain; charset=UTF-8")
	public String uploadToTomCatServer(@RequestPart(value="img", required=false) MultipartFile file) {
		
		return fileTransferService.uploadToTomcatServer(file);
		
	}
	
}
