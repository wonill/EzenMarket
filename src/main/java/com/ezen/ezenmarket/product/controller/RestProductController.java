package com.ezen.ezenmarket.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezen.ezenmarket.product.mapper.ProductMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@RestController
public class RestProductController {
	@Autowired
	ProductMapper productMapper;

	@GetMapping(value = {"/product/zzim"}, produces = "text/plain; charset=UTF-8")
	public String alreadyExistZzim(Integer user_number, Integer post_id) {
		log.info("찜 요청을 받았습니다.");
		
		if(productMapper.countNumOfZzim(user_number, post_id) > 0) {
			productMapper.deleteZzim(user_number, post_id);
			return "1";			
		} else {
			productMapper.insertZzim(user_number, post_id);
			return "0";
		}
	}
}
