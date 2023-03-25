package com.ezen.ezenmarket.review.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ezen.ezenmarket.review.dto.EndDeal;
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
		
		// 거래완료된 경우
		if(reviewMapper.countEndDeal(user_number, chatPartner, post_id) > 0) {
			if(reviewMapper.countReview(user_number, reviewMapper.searchEndDeal(post_id).getEnddeal_id()) > 0) {
				// 이미 작성한 리뷰가 있는 경우
				return "2";
			};
			
			return "1";
		} else if(reviewMapper.countEndDeal(user_number, chatPartner, post_id) == 0) {
			// 내가 거래 당사자가 아닌 경우
			return "0";
		}else if(reviewMapper.countEndDealAnyone(post_id) == 0){
			// 아직 거래완료되지 않은 경우
			return "-1";
		}  else {
			return "-2";
		}
		
		
	}
	
	@PostMapping(value="review/submitReview", produces="text/plain; charset=UTF-8")
	public String submitReview(@RequestParam("reviewStar")Integer reviewStar, 
								@RequestParam("checkBoxReview")String checkBoxReview, 
								@RequestParam(value="reviewDetail", required=false, defaultValue="")String reviewDetail,
								@RequestParam("user_number")Integer user_number,
								@RequestParam("post_id")Integer post_id) {
		System.out.println("별점 " + reviewStar);
		System.out.println("체크박스 " + checkBoxReview);
		System.out.println("reviewDetail " + reviewDetail);
		
		String review_content = checkBoxReview + " " + reviewDetail;
		
		EndDeal endDeal = reviewMapper.searchEndDeal(post_id);
		
		reviewMapper.insertReview(endDeal.getEnddeal_id(), reviewStar, user_number , review_content);
		
		return null;
	}
}
