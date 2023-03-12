package com.ezen.ezenmarket.report.dto;

import org.springframework.stereotype.Component;

import com.ezen.ezenmarket.product.dto.PostImage;
import com.ezen.ezenmarket.product.dto.Post;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ReportDto {
	
	private int reportType;
	private int reportDetail;
	private int userNumber;
	private String reportContent;
	
	private Post post;
	private Integer post_id;
	private String cause;
	
	private String currentPage;
	
}