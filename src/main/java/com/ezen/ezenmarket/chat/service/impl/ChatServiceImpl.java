package com.ezen.ezenmarket.chat.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.ezenmarket.chat.dto.ChattingContent;
import com.ezen.ezenmarket.chat.dto.ChattingRoom;
import com.ezen.ezenmarket.chat.dto.LastChatInfo;
import com.ezen.ezenmarket.chat.dto.MyChattingRoom;
import com.ezen.ezenmarket.chat.dto.MyChattingRoomInfo;
import com.ezen.ezenmarket.chat.dto.User;
import com.ezen.ezenmarket.chat.mapper.ChatMapper;
import com.ezen.ezenmarket.chat.service.ChatService;

@Service
public class ChatServiceImpl implements ChatService{
	
	@Autowired
	ChatMapper chatMapper;
	
	
	@Override
	public List<Integer> searchMyChatPartner(Integer user_number) {
		List<MyChattingRoom> myChattingRooms = chatMapper.selectMyChattingRooms(user_number);
		List<Integer> chatPartnerList = new ArrayList<>();
		
		
		
		for(MyChattingRoom myChattingRoom : myChattingRooms) {
			
			if(myChattingRoom.getBuyer_user_number() == user_number) {
				chatPartnerList.add(myChattingRoom.getSeller_user_number());
			} else {
				chatPartnerList.add(myChattingRoom.getBuyer_user_number());				
			}
		}
		
		
		return chatPartnerList;
	}
	
	@Override
	public boolean retrieveChatRoomInfo(HttpServletRequest req, Integer current_room_id) {
		
		User user = null;
		Integer user_number = null;
		
		
		Cookie[] cookies = req.getCookies();
		if(cookies != null && cookies.length > 0) {
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals("user_id")) {
					user = chatMapper.selectUser(cookie.getValue());
				}
			}
		}
		
		if(user == null) {
			return false;
		}
		
		user_number = user.getUser_number();
		
		// 내가 속한 모든 채팅방 번호를 가져옴
		List<MyChattingRoom> myChattingRooms = chatMapper.selectMyChattingRooms(user_number);
		
//		List<MyChattingRoomInfo> myChattingRoomsInfo = new ArrayList<>(); 
//		for(MyChattingRoom myChattingRoom : myChattingRooms) {
//			// 내가 속한 채팅방 번호의 마지막 채팅을 이용해 내 채팅방 정보 리스트를 채워줌
//			myChattingRoomsInfo.add(chatMapper.getMyChattingRoomInfoUsingLastChat(myChattingRoom.getChattingRoom_id()));  
//		}
		
		List<LastChatInfo> lastChatInfo = new ArrayList<>();
		if(myChattingRooms != null && myChattingRooms.size() > 0) {
			for(int i = 0; i < myChattingRooms.size(); i++) {
				// 내가 속한 채팅방 번호의 마지막 채팅을 이용해 내 채팅방 정보 리스트를 채워줌(수정된 방식)
				Integer room_id = myChattingRooms.get(i).getChattingRoom_id();
				
				lastChatInfo.add(chatMapper.getLastChatInfo(room_id, user_number));
				lastChatInfo.get(i).setLast_chat(chatMapper.selectLastChat(room_id)); 
				lastChatInfo.get(i).setChatting_date(chatMapper.selectLastChatDate(room_id));
			}			
		}
		
		// 현재 속한 방의 파트너 유저번호를 가져옴
		Integer myChatRoomPartener = chatMapper.getMyCurrentChatPartner(user_number, current_room_id);
		
		// 방금 가져온 유저번호를 통해 그 유저의 정보를 가져옴
		User myCurrenChatPartnerInfo = chatMapper.selectUserUsingUserNumber(myChatRoomPartener);
		
		// 채팅방 번호를 이용해 포스트정보를 가져옴
		ChattingRoom postInfo = chatMapper.getPostUsingChatRoomId(current_room_id);
		
		// 내가 속한 방의 채팅내역을 가져옴
		List<ChattingContent> chattingContents = chatMapper.getChattingContents(current_room_id);
		
		List<Integer> myChatPartnerList = searchMyChatPartner(user_number);
		
		
//		if(myChatPartnerList != null && myChatPartnerList.size() > 0) {
//			for(int i = 0; i < myChatPartnerList.size(); i++) {
//				 Integer user_num;
//				 lastChatInfo.add((LastChatInfo)chatMapper.selectUserUsingUserNumber(myChatPartnerList.get(i)));
//				 
//			}			
//		}
		
		
		
		// 내 정보
		req.setAttribute("user", user);
		// 오른쪽 상단에 출력해줄 유저 닉네임을 가져가기 위한 파트너 유저 정보
		req.setAttribute("myCurrentChatPartnerInfo", myCurrenChatPartnerInfo);
		// 왼쪽에 출력해줄 마지막 채팅이 나오는 유저 채팅 리스트
		req.setAttribute("lastChatInfo", lastChatInfo);
		// 유저 닉네임 아래에 출력할 포스트 정보
		req.setAttribute("postInfo", postInfo);
		// 내가 속한 방의 채팅 내역
		req.setAttribute("chattingContents", chattingContents);
		// 현재 방 번호
		req.setAttribute("current_room_id", current_room_id);
		
		return true;
	}
	
	
	
	@Override
	public void insert(Integer chattingRoom_id, Integer user_number, String contents) {
		chatMapper.insertChattingContent(chattingRoom_id, user_number, contents);
		
	}
}
