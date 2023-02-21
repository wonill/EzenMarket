package com.ezen.ezenmarket.product.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class Post {
	
	private Integer post_id;
	private Integer user_number;
	private Integer address_id;
	private String title;
	private Integer category_id;
	private Integer price;
	private Date created;
	private Date updated;
	private Integer post_view;
	
	private PostImage postImage;
	private Integer post_image_id;
	private String image_url;
}
