package com.ezen.ezenmarket.product.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class Post extends PostImage {
	
	private Integer post_id;
	private Integer user_number;
	private Integer address_id;
	private String title;
	private Integer category_id;
	private Integer price;
	private Date created;
	private Date updated;
	private Integer post_view;
	
	
}
