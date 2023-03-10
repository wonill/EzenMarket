package com.ezen.ezenmarket.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.ezen.ezenmarket.user.service.LoginService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
public class LogOutController {

	
	
	@Autowired
	LoginService loginService;
	
	@GetMapping(value="/logout")
	public String logout(HttpServletRequest req, HttpServletResponse resp) {
		
		
		HttpSession session = req.getSession(false);
				
		session.removeAttribute("user_id");
		
		session.invalidate();
	
		
		return "redirect:/";
	}
	
	@PostMapping(value="/logout")
	public void logoutPost(HttpServletRequest req, HttpServletResponse resp) {
		
		loginService.logout(req, resp);		
		
	}
}	