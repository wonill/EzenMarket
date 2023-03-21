package com.ezen.ezenmarket.admin.dto;


import lombok.Data;



@Data
public class ReportDTO {
	private Integer report_id;
	private Integer report_type;
	private String report_detail;
	private Integer user_number;
	private String report_content;
	private Integer report_status;
	
}