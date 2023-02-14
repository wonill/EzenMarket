package com.ezen.ezenmarket.user.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class User {
	private Integer user_Number;
	private String user_Name;
	private String user_ID;
	private String user_PW;
	private String nickname;
	private String phoneNumber;
	private String email;
	private String user_image;
	private Date bannedDate;
}
