package com.ezen.ezenmarket.mypage.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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
	public String idCheck(@RequestParam("nickname") String nickname,
						  @RequestParam("userintro") String userintro,
						  @RequestParam("nickChange") String nickChange,
							@RequestPart(value="img", required=false) MultipartFile file) {
		
		int check = service.nickCheck(nickname);
		
		if (check == 0 && nickChange.equals("yes")) {
			service.modifyNick(nickname);
		} else if (check == 1 && nickChange.equals("no")) {
			service.modifyNick(nickname);
		}
		service.modifyIntro(userintro);
		if (file != null) {
			// 디비에 해쉬로변환한 이름을 넣고 서버에 사진을 넣는 작업
			service.modifyImg(file);
		}
		String nickCheck = Integer.toString(check);
		
		return nickCheck;
	}
	
	
	@GetMapping(value="/management")
	public String getmanagement(HttpServletRequest req) {
			
		
	
		service.getmanagement(req);
		
	
		System.out.println("사용자번호: " + req);
		// 서비스 없이 매퍼랑만 하는것, number와 num
		return "mypage/sales_management";
	}
	
	@GetMapping(value="/deletePostOnTheManagementPage")
	public String deletePostOnTheManagementPage(Integer post_id, Integer user_number, Integer page) {
		
		
        if(post_id != null && user_number != null && page != null ) {        	
        	service.deletePost(post_id);
        }
		
		return "redirect:/mypage/management?user_number=" + user_number + "&page=" + page;
	}
	
	@GetMapping(value="/updatePostOnTheManagementPage")
	public String updatePostOnTheManagementPage(Integer post_id, Integer user_number, Integer page) {
		
		
		if(post_id != null && user_number != null && page != null ) {        	
			service.updatePost(post_id);
		}
		
		return "redirect:/mypage/management?user_number=" + user_number + "&page=" + page;
	}
}