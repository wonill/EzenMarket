package com.ezen.ezenmarket.product.dto;

import lombok.Data;

@Data
public class PostImage {
	private Integer post_image_id;
	private Integer post_id;
	private String image_url;
}
