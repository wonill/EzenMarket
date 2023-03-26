package com.ezen.ezenmarket.user.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User2 {
	private Integer user_number;
	private String user_Name;
	private String user_ID;
	private String user_PW;
	private String nickname;
	private String phoneNumber;
	private String email;
	private String user_address;
	private String user_image;
	private String user_intro;
	private Integer banned;
	private String user_pw_confirm;
}
