package com.ezen.ezenmarket.user.service;

import javax.servlet.http.HttpServletRequest;

public interface UserService {
	
	public int idCheck(String id);
	
	public int nickCheck(String nickName);
	
	public String getUserId(HttpServletRequest req);
}