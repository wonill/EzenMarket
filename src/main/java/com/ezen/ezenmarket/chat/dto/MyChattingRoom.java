package com.ezen.ezenmarket.chat.dto;

import org.springframework.beans.factory.annotation.Autowired;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@NoArgsConstructor
@AllArgsConstructor
@Data
public class MyChattingRoom {
	
	private Integer chattingRoom_id;
	private Integer seller_user_number;	
	private Integer buyer_user_number;
	
}
