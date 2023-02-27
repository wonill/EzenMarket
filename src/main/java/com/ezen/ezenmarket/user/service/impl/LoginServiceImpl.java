package com.ezen.ezenmarket.user.service.impl;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.ezenmarket.user.dto.User;
import com.ezen.ezenmarket.user.mapper.UserMapper;
import com.ezen.ezenmarket.user.service.LoginService;


@Service
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	UserMapper userMapper;
	
	@Override
	public boolean login(String user_id, String user_pw, HttpServletRequest req, HttpServletResponse resp) {
		
		List<User> userList = userMapper.selectAllUsers();
		
		for(User user : userList) {
			if(user.getUser_id().equals(user_id) && user.getUser_pw().equals(user_pw)) {
				HttpSession session = req.getSession();
				session.setAttribute("login", "yes");
				
				Cookie cookie = new Cookie("user_id", user_id);
				cookie.setPath(req.getContextPath());
				resp.addCookie(cookie);
				
				return true;
			}
		}

		
		return false;
		
	}
	
	@Override
	public void logout(HttpServletRequest req, HttpServletResponse resp) {
		req.getSession().invalidate();
		
		
	}
}
