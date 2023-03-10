package com.ezen.ezenmarket.chat.mapper;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ezen.ezenmarket.chat.dto.ChattingContent;
import com.ezen.ezenmarket.chat.dto.ChattingRoom;
import com.ezen.ezenmarket.chat.dto.LastChat;
import com.ezen.ezenmarket.chat.dto.MyChattingRoom;
import com.ezen.ezenmarket.chat.dto.MyChattingRoomInfo;
import com.ezen.ezenmarket.chat.dto.User;

public interface ChatMapper {
	
	public ChattingRoom selectChattingRoom(int chattingRoom_id);
	
	public List<MyChattingRoom> selectMyChattingRooms(Integer user_number);
	
	public ChattingRoom getMyChattingRoomsInfo(Integer chattingRoom_id);
	
	public List<MyChattingRoomInfo> getMyChattingRoomList(Integer chattingRoom_id);
	
	
	
	public User selectUser(String user_id);
	
	public User selectUserUsingUserNumber(Integer user_number);
	
	public MyChattingRoomInfo getMyChattingRoomInfoUsingLastChat(Integer chattingRoom_id);
	
	public Integer getMyCurrentChatPartner(@Param("user_number") Integer user_number, @Param("chattingroom_id") Integer chattingRoom_id);
	
	public ChattingRoom getPostUsingChatRoomId(Integer chattingRoom_id);
	
	public List<ChattingContent> getChattingContents(Integer chattingRoom_id);
	
	public String selectLastChat(Integer chattingRoom_id);
	
	public Date selectLastChatDate(Integer chattingRoom_id);
	
	public LastChat getLastChatInfo(@Param("chattingRoom_id")Integer chattingRoom_id, @Param("user_number")Integer user_number);
	
	public LastChat getLastChatInfoIfAbsent(@Param("chattingRoom_id")Integer chattingRoom_id, @Param("user_number")Integer user_number);
	
	public void insertChattingContent(@Param("chattingRoom_id")Integer chattingRoom_id,  @Param("user_number")Integer user_number,  @Param("contents")String contents);
	
	public ChattingRoom searchChatRoomForThisPost(@Param("buyer_user_number")Integer buyer_user_number, @Param("post_id")Integer post_id);
	
	public void createNewChatRoom(@Param("seller_user_number")Integer seller_user_number, @Param("buyer_user_number")Integer buyer_user_number, @Param("post_id")Integer post_id);
	
	public Integer searchLastChatRoom(@Param("buyer_user_number")Integer buyer_user_number);
	
}
