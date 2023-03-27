package com.ezen.ezenmarket.admin.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UploadVO {
	private String nmae;
	private MultipartFile file;
}