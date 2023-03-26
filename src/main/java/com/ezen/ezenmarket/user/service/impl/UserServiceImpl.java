package com.ezen.ezenmarket.user.service.impl;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.ezen.ezenmarket.user.dto.User;
import com.ezen.ezenmarket.user.mapper.UserMapper;
import com.ezen.ezenmarket.user.mapper.UserXmlMapper;
import com.ezen.ezenmarket.user.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserXmlMapper mapper;
	
	@Autowired
	UserMapper usermapper;
	
	 @Autowired
	private JavaMailSender emailSender;
	
	@Override
	public int idCheck(String id) {
		int cnt = mapper.idCheck(id);
		System.out.println("cnt: " + cnt);
		return cnt;
	}
	
	@Override
	public int nickCheck(String nickName) {
		int cnt = mapper.nickCheck(nickName);
		System.out.println("cnt: " + cnt);
		return cnt;
	}
	
	
	@Override
	public String getUserId(HttpServletRequest req) {
		
		Cookie[] cookies = req.getCookies();
		
		if (cookies != null && cookies.length > 0) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("user_id")) {
					return cookie.getValue();
				}
			}  
		}
		
		return null;
	}
	// 비밀번호 변경 시 입력하는 정보들
		@Override
	    public User findUserById(String user_id, String user_name, String email) {
	        return usermapper.findUserById(user_id, user_name, email);
	    }

	    User user;
	    
	    @Override
	    public void updateUserPw(String new_password, String user_id) {
	        usermapper.updateUserPw(new_password, user_id);
	    }
}