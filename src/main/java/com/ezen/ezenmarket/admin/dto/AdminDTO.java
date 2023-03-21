package com.ezen.ezenmarket.admin.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class AdminDTO {
	private Integer admin_number;
	private String admin_id;
	private String admin_pw;
}