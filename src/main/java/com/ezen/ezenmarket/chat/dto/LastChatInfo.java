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
public class LastChatInfo{
	Integer chattingRoom_id;
	Integer chattingContent_id;
	Integer user_number;
	String user_image;
	String nickname;
	String last_chat;
	Date chatting_date;
	
	private static SimpleDateFormat timeFormat = new SimpleDateFormat("a hh:mm", Locale.KOREA);
	
	public String getCreationDateTime() {
		
		LocalDate today = LocalDate.now();
		
		
		
		return chatting_date.toLocalDate().isEqual(today) ? timeFormat.format(chatting_date) : chatting_date.toString();
				
	}
}
