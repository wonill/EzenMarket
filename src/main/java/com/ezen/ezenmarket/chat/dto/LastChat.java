package com.ezen.ezenmarket.chat.dto;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Locale;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class LastChat{
	private Integer chattingRoom_id;
	private Integer chattingContent_id;
	private Integer user_number;
	private String user_image;
	private String nickname;
	private String last_chat;
	private Date chatting_date;
	private Integer numOfUnreadMsg;
	
	private static SimpleDateFormat timeFormat = new SimpleDateFormat("a hh:mm", Locale.KOREA);
	
	private JSONParser jsonParser = new JSONParser();
	
	public String getCreationDateTime() {
		
		LocalDate today = LocalDate.now();
		
		
		if(chatting_date != null) {
			return chatting_date.toLocalDate().isEqual(today) ? timeFormat.format(chatting_date) : chatting_date.toString();			
		} else {
			return null;
		}
				
	}
	
	public String getDefaultProfile(){
		
		return user_image == null ? 
				//"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqxMPBgQj7uUeMTfCb8aCSWPLZPOxae-J4Xg&usqp=CAU"
				"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTr6g2mhiF8Z2Or4GyTeneHPjXjXemwPghcX9_ZH_M7La1x2O3Vlaeiu7gsxpaGoIze-XE&usqp=CAU"
				: user_image;
	}
	
	public String getLastChatContent() {
		
		if(last_chat == null || last_chat.equals("")) {
			return "";
		}
		
		JSONObject jsonObj = null;
		
		try {
			jsonObj = (JSONObject) jsonParser.parse(last_chat);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String type = jsonObj.get("type").toString();
		
		
		
		
		String content;
		
		if(type.equals("message")) {
			content = jsonObj.get("contents").toString();
		} else if(type.equals("image")) {
			content = "사진을 보냈습니다.";
		} else {
			content = "";
		}
		
		return content;
	}
	
}
