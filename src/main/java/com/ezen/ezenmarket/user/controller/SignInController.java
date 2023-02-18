package com.ezen.ezenmarket.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
public class SignInController {
	
	@GetMapping(value="/signin")
	public String moveTosignInPage() {
		
		
		return "user/signin";
	}
	
	@GetMapping(value="/signup")
	public String register() {
		
		return "user/signup";
	}
	
	
}