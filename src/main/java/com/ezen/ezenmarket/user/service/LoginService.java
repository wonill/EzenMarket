package com.ezen.ezenmarket.user.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface LoginService {
	
	
	boolean login(String user_id, String user_pw, HttpServletRequest req, HttpServletResponse resp);
	
	void logout(HttpServletRequest req, HttpServletResponse resp);
}
