package com.ezen.ezenmarket.chat.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.ezen.ezenmarket.chat.mapper.ChatMapper;
import com.ezen.ezenmarket.chat.service.ChatService;

import lombok.extern.log4j.Log4j;

@Log4j
@ServerEndpoint(value = "/echo/{user_number}")
public class WebSocketChat{
	
	private static final Map<Integer, Session> loggedInUserMap = new ConcurrentHashMap<Integer, Session>();
	private JSONParser jsonParser = new JSONParser();
	
	
	private static ChatService chatService;
	
	@Autowired
    public void setChatService(ChatService chatService) {
        WebSocketChat.chatService = chatService;
    }
	
	
	public WebSocketChat() {
		log.info("웹소켓 객체 생성");
	}
	
	
	@OnOpen
	public void onOpen(Session session, @PathParam("user_number")Integer user_number) {
		log.info("onOpen: " + session);
		log.info(user_number + "번 유저가 입장하셨습니다.");
//		try {
//			session.getBasicRemote().sendText("채팅에 연결되었습니다.");
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		sessionList.add(session);
		loggedInUserMap.put(user_number, session);
		
		
//		for(int i = 0; i < sessionList.size(); i++) {
//			log.info(sessionList.get(i));			
		}
		
	
	@OnMessage
	public void onMessage(String jsonStr, Session session,  @PathParam("user_number")Integer user_number) {
		
		log.info("jsonStr: " + jsonStr);
		
		sendMessage(session, jsonStr, user_number);				
	}
	
	@OnError
	public void onError(Throwable e, Session session,  @PathParam("user_number")Integer user_number) {
		log.error(e);
		log.error(user_number + "번 유저 에러 발생");
	}
	
	@OnClose
	public void onClose(Session session, @PathParam("user_number")Integer user_number) {
		log.info(session.getId() + " exit the chat room");
//		sessionList.remove(session);
		loggedInUserMap.remove(user_number);
	}
	
	public void sendMessage(Session mySession, String jsonStr, Integer user_number) {
		JSONObject jsonObj = null;
		try {
			jsonObj = (JSONObject) jsonParser.parse(jsonStr);
			
			
			  System.out.println("=====Info=====");
			  System.out.println("채팅방 아이디 : " + jsonObj.get("chattingRoom_id"));
			  System.out.println("채팅을 보낸 유저 번호 : " + jsonObj.get("user_number"));
              System.out.println("콘텐츠 : "+ jsonObj.get("contents"));
              System.out.println("----------------------------"); 
              
              chatService.insert(Integer.parseInt(jsonObj.get("chattingRoom_id").toString()), Integer.parseInt(jsonObj.get("user_number").toString()), jsonObj.get("contents").toString());
              
             
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			
		//List<MyChattingRoom> myChattingRooms = chatMapper.selectMyChattingRooms(user_number);
		
		List<Integer> myChatPartnerList = chatService.searchMyChatPartner(user_number);
		
//		for(Integer myChatPartner: myChatPartnerList) {
//			System.out.println(myChatPartner + "번 유저와 채팅중");
//		}
		
//		try {
//			for(Session session : WebSocketChat.sessionList) {
//				if(!mySession.getId().equals(session.getId())) {
//					session.getBasicRemote().sendText(jsonStr);
//				}
//			}
//			
//		} catch(IOException e){
//			e.printStackTrace();
//		}
		
		log.info(WebSocketChat.loggedInUserMap);
		
		if(myChatPartnerList != null && myChatPartnerList.size() > 0) {
			try {
				for(Integer key : WebSocketChat.loggedInUserMap.keySet()){
					for(Integer myChatPartner: myChatPartnerList) {
						if(key == myChatPartner) {
							WebSocketChat.loggedInUserMap.get(key).getBasicRemote().sendText(jsonStr);
							System.out.println(myChatPartner);
							System.out.println(myChatPartner);
							System.out.println(myChatPartner);
							System.out.println(myChatPartner);
							System.out.println(myChatPartner);
						}
					}
				}
			}catch(IOException e) {
				e.printStackTrace();
			}			
		}
	}
}
