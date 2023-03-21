package com.ezen.ezenmarket.admin.service.impl;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.ezen.ezenmarket.admin.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Override
	public String getAdminId(HttpServletRequest req) {

		Cookie[] cookies = req.getCookies();

		if (cookies != null && cookies.length > 0) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("admin_id")) {
					return cookie.getValue();
				}
			}
		}

		return null;
	}
}