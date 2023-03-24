package com.ezen.ezenmarket.review.mapper;

import org.apache.ibatis.annotations.Param;

import com.ezen.ezenmarket.review.dto.Enddeal;

public interface ReviewMapper {
	
	
	public Integer countEndDeal(@Param("user_number")Integer user_number, @Param("chatPartner")Integer chatPartner, @Param("post_id")Integer post_id);
	
	public Enddeal searchEnddeal(Integer post_id);
	
	public void insertReview(@Param("enddeal_id")Integer enddeal_id, @Param("rating")Integer rating, @Param("user_number")Integer user_number, @Param("review_content")String review_content); 
}	
