package com.ezen.ezenmarket.chat.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller

public class ChattingController {
	
	
	@GetMapping(value="/chat")
	public String chattingRoomEntry() {
		
		
		return "chat/chat";
	}
}
