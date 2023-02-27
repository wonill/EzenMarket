package com.ezen.ezenmarket.chat.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class ChattingContent {
	
	private Integer chatting_content_id;
	private Integer chattingRoom_id;
	private Integer user_number;
	private String contents;
	private Date chatting_date;
}
