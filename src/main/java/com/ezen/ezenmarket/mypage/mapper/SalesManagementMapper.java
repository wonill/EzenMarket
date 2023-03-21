package com.ezen.ezenmarket.mypage.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ezen.ezenmarket.chat.dto.User;

public interface SalesManagementMapper {
	
	public List<Integer> getBuyerNumber(Integer post_id);
	
	public User getBuyerUser(Integer user_number);
	
	public void completeTransaction(@Param("seller_user_number")Integer seller_user_number, @Param("buyer_user_number")Integer buyer_user_number, @Param("post_id")Integer post_id);
	
	public void deleteEnddeal(Integer post_id);
}
