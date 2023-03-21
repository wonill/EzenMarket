package com.ezen.ezenmarket.admin.service.impl;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.ezenmarket.admin.dto.AdminDTO;
import com.ezen.ezenmarket.admin.mapper.LoginMapper;
import com.ezen.ezenmarket.admin.service.LoginService;

@Service
public class AdminLoginServiceImpl implements LoginService{
	
	
	@Autowired
	LoginMapper loginMapper;
	
	
	@Override
	public boolean login(String admin_id, String admin_pw, HttpServletRequest req, HttpServletResponse resp) {
		
		List<AdminDTO> adminList = loginMapper.getAdmin();
		
		HttpSession session = req.getSession();
				
		for (AdminDTO admin : adminList) {
			if (admin_id.equals(admin.getAdmin_id()) && admin_pw.equals(admin.getAdmin_pw())) {
		    	// getSession()은 세션이 있으면 있는 세션을 반환하고, 없으면 신규 세션을 생성한다
				 // 세션의 로그인 회원 정보를 보관한다
				session.setAttribute("Admin_login", "yes");
				session.setAttribute("nickname", admin.getAdmin_id());
				
				// 쿠키에 user_id 넣음
				Cookie cookie = new Cookie("admin_id)", admin_id);
				cookie.setPath(req.getContextPath());
				resp.addCookie(cookie);
				
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