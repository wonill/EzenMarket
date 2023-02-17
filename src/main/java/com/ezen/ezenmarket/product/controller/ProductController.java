package com.ezen.ezenmarket.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller

public class ProductController {
	
	@GetMapping(value="/product")
	public String productDetail() {
		
		
		return "product/product_detail";
	}
	
	@GetMapping(value="/search")
	public String searchProduct() {
		
		return "product/prodcut_search";
	}
	
	@GetMapping(value="/register")
	public String registerProduct() {
		
		return "product/product_register";
	}
	
	
}
