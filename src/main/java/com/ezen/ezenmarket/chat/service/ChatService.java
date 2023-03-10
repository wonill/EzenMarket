package com.ezen.ezenmarket.chat.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.ezen.ezenmarket.chat.dto.ChattingRoom;

public interface ChatService {
	
	List<Integer> searchMyChatPartner(Integer user_number);
	
	boolean retrieveChatRoomInfo(HttpServletRequest req, Integer room_id);
	
	void insert(Integer chattingRoom_id, Integer user_number, String contents);
	
	Integer searchChatRoomNumberToEnter(Integer buyer_user_number, Integer seller_user_number, Integer post_id);
}
