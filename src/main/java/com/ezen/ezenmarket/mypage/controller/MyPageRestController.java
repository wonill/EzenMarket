package com.ezen.ezenmarket.mypage.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.ezen.ezenmarket.chat.dto.User;
import com.ezen.ezenmarket.mypage.mapper.SalesManagementMapper;

import lombok.extern.log4j.Log4j2;


@Log4j2
@RestController
public class MyPageRestController {
	
	@Autowired
	SalesManagementMapper salesManagementMapper;
	
	
	@GetMapping(value = "buyerlist/{post_id}", produces = MediaType.APPLICATION_XML_VALUE)
	public List<User> getBuyerList(@PathVariable("post_id")Integer post_id) {
		
		List<Integer> buyerUserNumberList = salesManagementMapper.getBuyerNumber(post_id);
		
		List<User> buyerList = new ArrayList<>();
		
		if(buyerUserNumberList != null && buyerUserNumberList.size() > 0) {
			for(Integer buyerUserNumber : buyerUserNumberList) {
				
				buyerList.add(salesManagementMapper.getBuyerUser(buyerUserNumber));
				
			}			
		}
		
		
		
		
		return buyerList;
	}
	
	@GetMapping(value = "sales_completion/{user_number}/{post_id}/{seller_user_number}", produces = "text/plain; charset=UTF-8")
	public String completeSales(@PathVariable("user_number")Integer buyer_user_number, @PathVariable("post_id")Integer post_id, @PathVariable("seller_user_number")Integer seller_user_number) {
		
		
		if(buyer_user_number == 0) {
			buyer_user_number = null;
		}
		
		salesManagementMapper.completeTransaction(seller_user_number, buyer_user_number, post_id);
		
		return null;
	}
	
	@GetMapping(value = "deleteEnddeal/{post_id}", produces = "text/plain; charset = UTF-8" )
	public String deleteEnddeal(@PathVariable("post_id")Integer post_id) {
		
		salesManagementMapper.deleteEnddeal(post_id);
		
		return null;
	}
	
	
}
