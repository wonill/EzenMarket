package com.ezen.ezenmarket.review.mapper;

import org.apache.ibatis.annotations.Param;

import com.ezen.ezenmarket.review.dto.EndDeal;

public interface ReviewMapper {
	
	
	public EndDeal selectEndDeal(@Param("user_number")Integer user_number, @Param("chatPartner")Integer chatPartner, @Param("post_id")Integer post_id);
	
	public Integer countEndDeal(@Param("user_number")Integer user_number, @Param("chatPartner")Integer chatPartner, @Param("post_id")Integer post_id);
	
	public EndDeal searchEndDeal(Integer post_id);
	
	public void insertReview(@Param("enddeal_id")Integer enddeal_id, @Param("rating")Integer rating, @Param("user_number")Integer user_number, @Param("review_content")String review_content);
	
	public Integer countReview(@Param("user_number")Integer user_number, @Param("enddeal_id")Integer enddeal_id);
	
	public Integer countEndDealAnyone(Integer post_id);

}	
