package com.ezen.ezenmarket.review.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ezen.ezenmarket.review.mapper.ReviewMapper;

import lombok.extern.log4j.Log4j2;

@Log4j2
@RestController
public class ReviewRestController {
	
	@Autowired
	ReviewMapper reviewMapper;
	
	
	@PostMapping(value="review/reviewerCheck", produces="text/plain; charset=UTF-8")
	public String reviewerCheck(Integer user_number, Integer chatPartner, Integer post_id){
		System.out.println("리뷰한 유저 번호 " + user_number);
		System.out.println("대화 상대 유저 번호 " + chatPartner);
		System.out.println("리뷰한 상품 " + post_id);
		
		
		if(reviewMapper.countEndDeal(user_number, chatPartner, post_id) > 0) {
			return "1";
		} else if(reviewMapper.countEndDeal(user_number, chatPartner, post_id) == 0){
			return "0";
		} else {
			return "-1";
		}
		
		
	}
	
	@PostMapping(value="review/submitReview", produces="text/plain; charset=UTF-8")
	public String submitReview(@RequestParam("reviewStar")Integer reviewStar, 
								@RequestParam("checkBoxReview")String checkBoxReview, 
								@RequestParam(value="reviewDetail", required=false, defaultValue="")String reviewDetail) {
		System.out.println("별점 " + reviewStar);
		System.out.println("체크박스 " + checkBoxReview);
		System.out.println("reviewDetail " + reviewDetail);
		
		return null;
	}
}
