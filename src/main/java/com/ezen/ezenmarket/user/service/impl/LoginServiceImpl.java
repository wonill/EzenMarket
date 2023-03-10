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
		
		HttpSession session = req.getSession();
		
		for(User user : userList) {
			if(user.getUser_id().equals(user_id) && user.getUser_pw().equals(user_pw)) {
				session.setAttribute("login", "yes");
				session.setAttribute("nickname", user.getNickname());
				session.setAttribute("user_number", user.getUser_number());
				
				Cookie cookie = new Cookie("user_id", user_id);
				Cookie cookie2 = new Cookie("user_num", Integer.toString(user.getUser_number()));
				cookie.setPath(req.getContextPath());
				cookie2.setPath(req.getContextPath());
				resp.addCookie(cookie);
				resp.addCookie(cookie2);
				
				
				return true;
			} else {
				
				session.setAttribute("errorMsg", "로그인 정보가 올바르지 않습니다.");
			}
		}

		
		return false;
		
	}
	
	@Override
	public void logout(HttpServletRequest req, HttpServletResponse resp) {
		req.getSession().invalidate();
		
		
	}
}
