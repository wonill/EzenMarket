package com.ezen.ezenmarket.product.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PostImage {
	private Integer post_image_id;
	private Integer post_id;
	private String image_url;
}
        