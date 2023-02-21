package com.ezen.ezenmarket.user.service.impl;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.ezen.ezenmarket.user.service.LoginService;


@Service
public class LoginServiceImpl implements LoginService{
	
	
	@Override
	public boolean login(String user_id, String user_pw, HttpServletRequest req, HttpServletResponse resp) {
		
		if(user_id.equals("test@test") && user_pw.equals("1234")
				|| user_id.equals("test2@test") && user_pw.equals("1234")) {
			HttpSession session = req.getSession();
			session.setAttribute("login", "yes");
			
			Cookie cookie = new Cookie("user_id", user_id);
			cookie.setPath(req.getContextPath());
			resp.addCookie(cookie);
			
			return true;
		}

		
		return false;
		
	}
	
	@Override
	public void logout(HttpServletRequest req, HttpServletResponse resp) {
		req.getSession().invalidate();
		
		
	}
}
