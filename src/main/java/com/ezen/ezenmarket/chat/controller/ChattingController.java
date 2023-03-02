package com.ezen.ezenmarket.chat.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.ezen.ezenmarket.chat.service.ChatService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
public class ChattingController {
	
	@Autowired
	ChatService chatService;
	
	
	@GetMapping(value="/chat")
	public String chattingRoomEntry(HttpServletRequest req, @Param("room_id")Integer current_room_id) {
		
		HttpSession session = req.getSession();
		
		if(session.getAttribute("login") == null || !session.getAttribute("login").equals("yes")) {
			return "user/signin";
		}
		
		chatService.retrieveChatRoomInfo(req, current_room_id == null ? 1 : current_room_id);
		return "chat/chat";
	}
	
	@GetMapping(value="/chat2")
	public String chattingRoomEntry2(HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		
		if(session.getAttribute("login") == null || !session.getAttribute("login").equals("yes")) {
			return "user/signin";
		}
		
		req.setAttribute("chattingRoom_id", 2);
		
		return "chat/chat";
	}
	
	
	
}
