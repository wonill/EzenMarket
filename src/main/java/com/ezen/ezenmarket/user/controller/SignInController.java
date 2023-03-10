package com.ezen.ezenmarket.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.ezenmarket.user.dto.User;
import com.ezen.ezenmarket.user.mapper.UserXmlMapper;
import com.ezen.ezenmarket.user.service.impl.LoginServiceImpl;
import com.ezen.ezenmarket.user.service.impl.UserServiceImpl;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
public class SignInController {
	
	@Autowired
	UserXmlMapper uxm;
	
	@Autowired
	LoginServiceImpl loginService;
	
	@GetMapping(value="/signin")
	public String moveToSignInPage() {
		
		return "user/signin";
	}
	
	@PostMapping(value="/signin")
	public String signIn(String user_id, String user_pw, HttpServletRequest req, HttpServletResponse resp, String requestUri) {
		
		
		System.out.println("아이디: " + user_id);
		System.out.println("패스워드: " + user_pw);
		if(loginService.login(user_id, user_pw, req, resp)) {
			
			return "redirect:" + (requestUri == "" ? "/" : requestUri);
		}
		
		return "redirect:/signin";
	}
	
	@GetMapping(value="/signup")
	public String moveToSingUpPage() {
		
		return "user/signup";
	}
	
	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	
	@PostMapping(value="/signup")
	public String userSingUp(User user) {

//		user.setUser_PW(passwordEncoder.encode(user.getUser_PW()));
//		System.out.println(passwordEncoder.matches("12341234a", user.getUser_PW()));
		
		System.out.println(user.getUser_address());
		
//		uxm.userSignUp(user);
		
		return "main";
	}
	
	@Autowired
	UserServiceImpl userService;
	
	@PostMapping(value="/idCheck")
	@ResponseBody
	public String idCheck(@RequestBody String id) {
		System.out.println(id);
		String cnt = Integer.toString(userService.idCheck(id));
		return cnt;
	}
	
	@PostMapping(value="/nickCheck")
	@ResponseBody
	public String nickCheck(@RequestBody String nickName) {
		String cnt = Integer.toString(userService.nickCheck(nickName));
		return cnt;
	}
}