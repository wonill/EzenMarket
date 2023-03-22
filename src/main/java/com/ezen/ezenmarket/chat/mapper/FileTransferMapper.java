package com.ezen.ezenmarket.chat.mapper;

public interface FileTransferMapper {
	
	public void saveImgToDataBase(Integer ChattingRoom_id, Integer user_number, String imgName);
}
