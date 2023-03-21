package com.ezen.ezenmarket.chat.service;

import java.util.Set;

import javax.servlet.http.HttpServletRequest;

public interface ChatService {
	
	Set<Integer> searchMyChatPartner(Integer user_number);
	
	boolean retrieveChatRoomInfo(HttpServletRequest req, Integer room_id);
	
	void insert(Integer chattingRoom_id, Integer user_number, String contents);
	
	Integer searchChatRoomNumberToEnter(Integer buyer_user_number, Integer seller_user_number, Integer post_id);
}
