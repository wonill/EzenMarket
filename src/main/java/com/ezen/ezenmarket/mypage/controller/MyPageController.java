package com.ezen.ezenmarket.mypage.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.ezenmarket.mypage.service.MyPageServiceImpl;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping(value="/mypage")
public class MyPageController {
	
	@Autowired
	MyPageServiceImpl service;
	
	@GetMapping(value={"/", "/sales_list"})
	public String salesList(HttpServletRequest req) {
		if(req.getParameter("user_number").equals("")) {
			//req.setAttribute("requestUri", "/mypage/");
			return "user/signin";
		} else {
			service.getSaleList(req);
			
			return "mypage/sales_list";
		}
		
		
	}
	
	@GetMapping(value="/buy_list")
	public String buyList() {
		
		return "mypage/buy_list";
	}
	
	@GetMapping(value="/zzim")
	public String zzim(HttpServletRequest req) {
		
		service.getZzimList(req);
		
		return "mypage/zzim";
	}
	
	@GetMapping(value="/review")
	public String review(HttpServletRequest req) {
		
		service.getReviewList(req);
		
		return "mypage/review";
	}
	
	@GetMapping(value="/header")
	public String header() {
		
		return "headerAndFooter/header";
	}
	
	@PostMapping(value="/modifynick")
	@ResponseBody
	public String idCheck(@RequestParam("name") String nickname,
						  @RequestParam("intro") String userintro,
						  @RequestParam("img") String userImg) {
		
		int check = service.nickCheck(nickname);
		
		if (check == 0) {
			service.modifyNick(nickname);
		}
		service.modifyIntro(userintro);
		String nickCheck = Integer.toString(check);
		
		return nickCheck;
	}
}