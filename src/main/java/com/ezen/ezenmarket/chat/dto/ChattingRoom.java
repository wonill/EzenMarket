package com.ezen.ezenmarket.chat.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class ChattingRoom extends ChattingContent{
	
	private Integer chattingRoom_id;
	private Integer seller_user_number;
	private Integer buyer_user_number;
	
}
