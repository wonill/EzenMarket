package com.ezen.ezenmarket.user.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.ezen.ezenmarket.user.dto.User;

public interface UserService {
	
	public int idCheck(String id);
	
	public int nickCheck(String nickName);
	
	public String getUserId(HttpServletRequest req);
	    
	User findUserById(String user_id, String user_name, String email);
	    
	void updateUserPw(String new_password, String user_id);
	

}