package com.ezen.ezenmarket.mypage.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.ezenmarket.mypage.service.MyPageServiceImpl;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping(value="/mypage")
public class PostModifyController {
	
	@Autowired
	MyPageServiceImpl service;
	
	@GetMapping(value="/update")
	public String updatePost(HttpServletRequest req) {
		Integer post_Id 
			= Integer.parseInt(req.getParameter("post_Id"));
		
		String user_number = req.getParameter("user_number");
		
		service.updatePost(post_Id);
		
		return "redirect:/mypage/sales_list?user_number="+user_number;
	}
	
	@GetMapping(value="/delete")
	public String deletePost(HttpServletRequest req) {
		Integer post_Id 
		= Integer.parseInt(req.getParameter("post_Id"));
		
		String user_number = req.getParameter("user_number");
		
		service.deletePost(post_Id);
		
		return "redirect:/mypage/sales_list?user_number="+user_number;
	}
	
	@GetMapping(value="/deleteZzim")
	public String deleteZzim(HttpServletRequest req) {
		Integer post_Id 
		= Integer.parseInt(req.getParameter("post_Id"));
		
		String user_number = req.getParameter("user_number");
		//service.deleteZzim(post_Id);
		
		return "redirect:/mypage/zzim?user_number="+user_number;
	}
}