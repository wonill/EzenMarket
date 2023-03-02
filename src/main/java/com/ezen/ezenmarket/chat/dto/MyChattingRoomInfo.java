package com.ezen.ezenmarket.chat.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@NoArgsConstructor
@AllArgsConstructor
@Data
public class MyChattingRoomInfo {
	
	private Integer user_number;
	private Integer chatting_content_id;
	private Integer chattingRoom_id;
	private String contents;
	private Date chatting_date;
	private String user_name;
	private String user_id;
	private String user_pw;
	private String nickname;
	private Integer phonenumber;
	private String email;
	private String user_address;
	private String user_image;
	private Integer banned;
	private String user_intro;
}
