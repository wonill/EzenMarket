package com.ezen.ezenmarket.chat.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.ezenmarket.chat.service.ChatService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
public class ChattingController {
	
	@Autowired
	ChatService chatService;
	
	
	@GetMapping(value="/chat")
	public String chattingRoomEntry(HttpServletRequest req, @RequestParam(required = false, defaultValue = "0")String room_id) {
		
		Integer current_room_id = Integer.parseInt(room_id);
		
		HttpSession session = req.getSession();
		
		if(session.getAttribute("login") == null || !session.getAttribute("login").equals("yes")) {
			req.setAttribute("requestUri", "/chat");
			return "user/signin";
		}
		
		chatService.retrieveChatRoomInfo(req, current_room_id == null ? 0 : current_room_id);
		return "chat/chat";
	}
	
	
	@GetMapping(value="/chat_from_post")
	public String enterChatRoomFromPost(Integer buyer_user_number, Integer seller_user_number, Integer post_id) {
		
		return "redirect:/chat?room_id=" + chatService.searchChatRoomNumberToEnter(buyer_user_number, seller_user_number, post_id);
	}
	
	
	
	
	
}
