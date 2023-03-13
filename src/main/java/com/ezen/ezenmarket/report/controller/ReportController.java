package com.ezen.ezenmarket.report.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.ezenmarket.product.mapper.ProductMapper;
import com.ezen.ezenmarket.report.mapper.ReportMapper;

@Controller
public class ReportController {
	
	@Autowired
	ReportMapper reportmapper;
	
	@Autowired
	ProductMapper productMapper;
	
	 @GetMapping(value="/report")
	 public String paramTest(HttpServletRequest req, String  post_id, String user_number) {
	      
		 String cause = req.getParameter("cause");
		 String etc = req.getParameter("etc");
		 String currentPage = req.getParameter("currentPage");
		
		 
		 // System.out.println("currentPage: " + currentPage);
		 
		 if (etc != null) {
			 cause = cause + "  " + etc;
		 } 
		
		//  System.out.println("사유: " + cause);
		 reportmapper.insertReport(currentPage, cause, Integer.parseInt(post_id), Integer.parseInt(user_number));
		 
		 System.out.println("사용자번호: " + user_number);
		 
		 // 신고 후 기존에 신고했던 상세페이지로 
		 return "redirect:/product?id=" + post_id;
	 }

}
