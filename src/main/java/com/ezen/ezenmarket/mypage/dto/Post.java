package com.ezen.ezenmarket.mypage.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Post {
	private Integer post_Id;
	private String title;
	private Integer price;
	private String image_url;
	
	private Date updated;
	private Integer user_number;
}