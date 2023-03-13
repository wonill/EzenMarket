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
	
	private Post post;
	
	private int reportType;
	private int reportDetail;
	private int user_number;
	private String reportContent;
	private Integer post_id;
	
	private String cause;
	private String currentPage;
	
}