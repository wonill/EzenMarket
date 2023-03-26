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
	 public String paramTest(HttpServletRequest req, Integer report_detail, String user_number) {
	      
		 String cause = req.getParameter("cause");
		 String etc = req.getParameter("etc");
		 String currentPage = req.getParameter("currentPage");
		
		 
		 // System.out.println("currentPage: " + currentPage);
		 
		 if (etc != null) {
			 cause = cause + "  " + etc;
		 } 
		
		//  System.out.println("사유: " + cause);
		 reportmapper.insertReport(currentPage, cause, report_detail, Integer.parseInt(user_number));
		 
		 System.out.println("사용자번호: " + user_number);
		 
		 // 신고 후 기존에 신고했던 상세페이지로 
		 if(currentPage.equals("0")) {
			 return "redirect:/mypage/?user_number=" + report_detail;
		 } else if(currentPage.equals("1")) {
			 return "redirect:/product?id=" + report_detail;
		 } else if(currentPage.equals("2")) {
			 return "redirect:/chat?room_id=" + report_detail;
		 } else if(currentPage.equals("3")) {
			 //return "redirect:/mypage/review?=" + report_detail;
		 }
		 
		 return "redirect:/";
	 }

}
