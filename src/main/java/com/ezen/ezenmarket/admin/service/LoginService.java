package com.ezen.ezenmarket.admin.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface LoginService {
	
	
	boolean login(String admin_id, String admin_pw, HttpServletRequest req, HttpServletResponse resp);
	
	void logout(HttpServletRequest req, HttpServletResponse resp);

	
}