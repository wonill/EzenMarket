package com.ezen.ezenmarket.product.mapper;

import java.util.List;

import com.ezen.ezenmarket.product.dto.Post;

public interface ProductMapper {
	
	public List<Post> selectAllProducts();
	
	public Post selectProduct(String id);
}
