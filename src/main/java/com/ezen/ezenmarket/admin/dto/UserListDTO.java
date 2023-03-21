package com.ezen.ezenmarket.admin.dto;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
public class UserListDTO {
	private Integer user_number;
	private String user_name;
	private String user_id;
	private String user_pw;
	private String nickname;
	private String phonenumber;
	private String user_address;
	private String user_image;
	private String email;
	private Integer banned;
	private String user_intro;
}