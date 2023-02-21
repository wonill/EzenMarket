package com.ezen.ezenmarket.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.ezen.ezenmarket.user.service.LoginService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
public class SignInController {
	
	@Autowired
	LoginService loginService;
	
	@GetMapping(value="/signin")
	public String moveTosignInPage() {
		
		
		return "user/signin";
	}
	
	@GetMapping(value="/signup")
	public String signUp() {
		
		return "user/signup";
	}
	
	@PostMapping(value="/signin")
	public String signIn(String user_id, String user_pw, HttpServletRequest req, HttpServletResponse resp) {
		
		System.out.println("아이디" + user_id);
		System.out.println("패스워드" + user_pw);
		if(loginService.login(user_id, user_pw, req, resp)) {
			
			return "redirect:/";
		}
		
		return "redirect:/signin";
	}
	
	
}