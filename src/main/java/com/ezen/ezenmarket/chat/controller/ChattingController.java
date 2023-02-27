package com.ezen.ezenmarket.chat.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
public class ChattingController {
	
	
	@GetMapping(value="/chat")
	public String chattingRoomEntry(HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		
		if(session.getAttribute("login") == null || !session.getAttribute("login").equals("yes")) {
			return "user/signin";
		}
		
		req.setAttribute("chattingRoom_id", 1);
		
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
