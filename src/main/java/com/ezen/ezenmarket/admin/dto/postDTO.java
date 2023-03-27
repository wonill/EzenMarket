package com.ezen.ezenmarket.admin.dto;

import lombok.Data;

@Data
public class postDTO {
	
	private Integer post_id;
	private Integer user_number;
	private String post_address;
	private String title;
	private Integer category_id;
	private String created;
}