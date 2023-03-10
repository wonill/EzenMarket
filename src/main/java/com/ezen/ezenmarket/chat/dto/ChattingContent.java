package com.ezen.ezenmarket.chat.dto;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Locale;

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
	private Integer unread;
	
	
	private static SimpleDateFormat timeFormat = new SimpleDateFormat("a hh:mm", Locale.KOREA);
	
	public String getCreationDateTime() {
		
		LocalDate today = LocalDate.now();
		
		return chatting_date.toLocalDate().isEqual(today) ? timeFormat.format(chatting_date) : chatting_date.toString();
				
	}
}
