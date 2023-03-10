package com.ezen.ezenmarket.chat.mapper;

import org.apache.ibatis.annotations.Param;

public interface ReadProcessingMapper {
	
	
	public void readProcessing(@Param("chattingRoom_id")Integer chattingRoom_id, @Param("user_number")Integer user_number);
	
	public Integer countUnreadMessages(@Param("chattingRoom_id")Integer chattingRoom_id, @Param("user_number")Integer user_number);
}
