package com.ezen.ezenmarket.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping(value="/mypage")
public class MyPageController {

	@GetMapping(value={"/", "/sales_list"})
	public String salesList() {
		
		return "mypage/sales_list";
	}
	
	@GetMapping(value="/buy_list")
	public String buyList() {
		
		return "mypage/buy_list";
	}
	
	@GetMapping(value="/zzim")
	public String zzim() {
		
		return "mypage/zzim";
	}
	
	@GetMapping(value="/review")
	public String review() {
		
		return "mypage/review";
	}
	
	
	
	
}
