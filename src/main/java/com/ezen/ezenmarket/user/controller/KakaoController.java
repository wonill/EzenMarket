package com.ezen.ezenmarket.user.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.ezenmarket.user.service.KakaoLoginService;

@Controller
public class KakaoController {
	
	@Autowired
    private KakaoLoginService kakao;
    
	/*
	 * @RequestMapping(value="/") public String index() {
	 * 
	 * return "user/signup"; }
	 */
	/*
	 * @RequestMapping(value="/kakao") public String login(@RequestParam("code")
	 * String code) { String access_Token = kakao.getAccessToken(code);
	 * System.out.println("controller access_token : " + access_Token);
	 * 
	 * return "user/signup"; }
	 */
    
    @RequestMapping(value="/kakao", produces = "text/json; charset=UTF-8")
    public String login(@RequestParam("code") String code, HttpSession session) {
        String access_Token = kakao.getAccessToken(code);
        HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
        System.out.println("login Controller : " + userInfo);
        
        //    클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
        if (userInfo.get("email") != null) {
            session.setAttribute("userId", userInfo.get("email"));
            session.setAttribute("nickname", userInfo.get("nickname"));
            session.setAttribute("access_Token", access_Token);
            session.setAttribute("login", "yes");
            
        }
        return "redirect:/";
    }
    
    @RequestMapping(value="/logout")
    public String logout(HttpSession session) {
        kakao.kakaoLogout((String)session.getAttribute("access_Token"));
        session.removeAttribute("access_Token");
        session.removeAttribute("userId");
       
        return "redirect:/";
    }

}