package com.ezen.ezenmarket.user.controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.ezenmarket.user.service.MailService;

@Controller
public class EmailController {
	
	@Autowired
	private MailService mailService;
	private String authNum;

	//DB작업이 필요한 만큼 DAO들 선언해야함
	
	//아이디와 이메일이 같으면 특정한 메일이 가게..
	@PostMapping("/noticeMail")
	@ResponseBody
	public String sendEmail(@RequestBody String email) throws Exception {
		Random random = new Random();
        StringBuffer key = new StringBuffer();

        for(int i = 0; i < 8; i++) {
            int index = random.nextInt(3);

            switch (index) {
                case 0 :
                    key.append((char) ((int)random.nextInt(26) + 97));
                    break;
                case 1:
                    key.append((char) ((int)random.nextInt(26) + 65));
                    break;
                case 2:
                    key.append(random.nextInt(9));
                    break;
            }
        }
        
        authNum = key.toString();
        
		String addr = "baesunghoon81@gmail.com";
		
		String subject = "인증메일입니다.";
		
		String body = "인증번호는\r\n" + authNum +"입니다.";
		
		mailService.sendEmail(email, addr, subject, body);
		
		return authNum;
	}
}