package com.ezen.ezenmarket.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.ezenmarket.user.dto.User;
import com.ezen.ezenmarket.user.mapper.UserMapper;
import com.ezen.ezenmarket.user.mapper.UserXmlMapper;
import com.ezen.ezenmarket.user.service.impl.LoginServiceImpl;
import com.ezen.ezenmarket.user.service.impl.UserServiceImpl;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
public class SignInController {
	
	@Autowired
	UserXmlMapper uxm;
	
	@Autowired
	LoginServiceImpl loginService;
	
	@Autowired
	UserServiceImpl userService;

	
	@GetMapping(value="/signin")
	public String moveToSignInPage() {
		
		return "user/signin";
	}
	
	@PostMapping(value="/signin")
	public String signIn(String user_id, String user_pw, HttpServletRequest req, HttpServletResponse resp, String requestUri) {
		
		
		System.out.println("아이디: " + user_id);
		System.out.println("패스워드: " + user_pw);
		if(loginService.login(user_id, user_pw, req, resp)) {
			
			return "redirect:" + (requestUri == "" ? "/" : requestUri);
		}
		
		return "redirect:/signin";
	}
	
	@GetMapping(value="/signup")
	public String moveToSignUpPage() {
		
		return "user/signup";
	}
	
	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	
	@PostMapping(value="/signup")
	public String userSingUp(User user) {

//		user.setUser_PW(passwordEncoder.encode(user.getUser_PW()));
//		System.out.println(passwordEncoder.matches("12341234a", user.getUser_PW()));
		
		System.out.println(user.getUser_address());
		
//		uxm.userSignUp(user);
		
		return "main";
	}
	

	
	@PostMapping(value="/idCheck")
	@ResponseBody
	public String idCheck(@RequestBody String id) {
		System.out.println(id);
		String cnt = Integer.toString(userService.idCheck(id));
		return cnt;
	}
	
	@PostMapping(value="/nickCheck")
	@ResponseBody
	public String nickCheck(@RequestBody String nickName) {
		String cnt = Integer.toString(userService.nickCheck(nickName));
		return cnt;
	}
	
	@Autowired
	UserMapper usermapper;
	
	// 아이디 찾기
	@GetMapping(value="/find_id")
	public String moveTofind_id(Model model) {
	    model.addAttribute("User", new User());
	    return "user/find_id";
	}

	@PostMapping(value="/find_id")
	public String getUserId(@RequestParam("user_name") String user_name,
	    @RequestParam("email") String email, Model model){
	    
	    // 이름과 이메일이 빈칸인지 확인
	    if (user_name.trim().isEmpty() || email.trim().isEmpty()) {
	        model.addAttribute("message", "이름과 이메일을 입력해주세요.");
	        return "user/find_id";
	    }

	    User result = usermapper.getUserId(user_name, email);

	    if(result == null) {
	        model.addAttribute("message", "입력하신 정보와 일치하는 회원정보가 없습니다.");
	        return "user/find_id";
	    }
	    else {
	        model.addAttribute("user_id", result.getUser_id());
	        return "user/show_id";
	    }
	}



	// 아이디 확인하는 페이지
	@GetMapping(value="/show_id")
	public String moveToshow_id() {
		return "user/show_id";
	}
	
	@PostMapping(value="/show_id")
	public String showUserId(@RequestParam("user_id") String user_id, Model model){
	    model.addAttribute("user_id", user_id);
	    return "user/show_id";
	}
	
	
	// 비밀번호 찾기
	@GetMapping(value="/find_pw")
	public String showFindPasswordForm(Model model, String user_id, String user_name, String email) {
	    model.addAttribute("User", new User());
	    return "user/find_pw";
	}
	
	// 비밀번호 변경하기 전 아이디, 이름, 이메일 입력
	@PostMapping(value="/find_pw")
	public String findPassword(@ModelAttribute("User") User user, Model model) throws Exception {
	    try {
	        String user_id = user.getUser_id();
	        String user_name = user.getUser_name();
	        String email = user.getEmail();
	        String new_password = user.getUser_pw();
	        String user_pw_confirm = user.getUser_pw_confirm();
	        
	        userService.updateUserPw(new_password, user_id);
	        
	        return "user/find_pw_confirmation";
	    } catch (Exception e) {
	       
	        model.addAttribute("errorMessage", e.getMessage());
	        return "user/find_pw";
	    }
	}

	// 비밀번호 변경하는 페이지
	@PostMapping(value="/pw_changing")
	public String changePassword(@ModelAttribute("User") User user, Model model) {
	    String user_id = user.getUser_id();
	    String user_name = user.getUser_name();
	    String email = user.getEmail();
	    String new_password = user.getUser_pw();
	    String user_pw_confirm = user.getUser_pw_confirm();

	    model.addAttribute("user_id", user_id);
	    
	    // mapper 불러서 입력이 정확한지 확인
	    User matchingUser = usermapper.findUserById(user_id, user_name, email);

	    if (matchingUser == null) {
	        return "user/find_pw";
	    } else {
	        model.addAttribute("User", user);
	      
	        return "user/pw_changing";
	    }
	}
	
	@PostMapping(value="/pw_confirmation")
	public String confirmPassword(@ModelAttribute("User") User user, Model model) {
	    String user_id = user.getUser_id();
	    String new_password = user.getUser_pw();
	    String new_password_confirm = user.getUser_pw_confirm();

	    model.addAttribute("user_id", user_id);
	    
	    System.out.println("아이디: " + user_id);
	    System.out.println("새 비밀번호: " + new_password);

	    if (!new_password.equals(new_password_confirm)) {
	        return "user/pw_changing";
	    }

	    // db에 새 비밀번호 업데이트
	    usermapper.updateUserPw(new_password, user_id);

	    return "user/pw_confirmation";
	}
	
}