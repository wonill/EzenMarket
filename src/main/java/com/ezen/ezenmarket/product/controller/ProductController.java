package com.ezen.ezenmarket.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ezen.ezenmarket.product.dto.Post;
import com.ezen.ezenmarket.product.mapper.ProductMapper;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
public class ProductController {
	
	@Autowired
	ProductMapper productMapper;
	
	@GetMapping(value="/product")
	public String productDetail(String id, Model model) {
		
		model.addAttribute("post", productMapper.selectProduct(id));
		
		return "product/product_detail";
	}
	
	@GetMapping(value="/search")
	public String searchProduct() {
		
		return "product/product_search";
	}
	
	@GetMapping(value="/register")
	public String registerProduct() {
		
		return "product/product_register2";
	}
	
	
}
