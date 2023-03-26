package com.ezen.ezenmarket.notification.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class NotificationController {
	
	@ResponseBody
	@PostMapping(value="/saveAlarm" , produces = "text/plain; charset=UTF-8")
	public String saveAlarm() {
		return "success";
	}
}
