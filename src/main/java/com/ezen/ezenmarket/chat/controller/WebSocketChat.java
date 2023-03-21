package com.ezen.ezenmarket.chat.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
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

import com.ezen.ezenmarket.chat.mapper.ChatMapper;
import com.ezen.ezenmarket.chat.mapper.ReadProcessingMapper;
import com.ezen.ezenmarket.chat.service.ChatService;

import lombok.extern.log4j.Log4j;

@Log4j
@ServerEndpoint(value = "/echo/{user_number}")
public class WebSocketChat{
	
	private static final Map<Integer, Session> loggedInUserMap = new ConcurrentHashMap<Integer, Session>();
	private JSONParser jsonParser = new JSONParser();
	
	
	private static ChatService chatService;
	
	private static ChatMapper chatMapper;
	
	private static ReadProcessingMapper readProcessingMapper;
	
	public WebSocketChat() {
		log.info("웹소켓 객체 생성");
	}
	
	@Autowired
    public void setChatService(ChatService chatService) {
        WebSocketChat.chatService = chatService;
    }
	
	@Autowired
	public void setChatMapper(ChatMapper chatMapper) {
		WebSocketChat.chatMapper = chatMapper;
	}
	
	@Autowired
	public void setReadProcessingMapper(ReadProcessingMapper readProcessingMapper) {
		WebSocketChat.readProcessingMapper = readProcessingMapper;
	}
	
	
	
	
	@OnOpen
	public void onOpen(Session session, @PathParam("user_number")Integer user_number) {
		log.info(user_number + "번 유저가 입장하셨습니다. 세션: " + session);
		

		loggedInUserMap.put(user_number, session);
		
		

	}
	@OnMessage
	public void onMessage(String jsonStr, Session session,  @PathParam("user_number")Integer user_number) {
		
		JSONObject jsonObj = null;
		String type = null;
		
		try {
			jsonObj = (JSONObject) jsonParser.parse(jsonStr);
			
			type = jsonObj.get("type").toString();
			
			  System.out.println("=====Info=====");
			  System.out.println("타입 : " + type);
			  System.out.println("채팅방 아이디 : " + jsonObj.get("chattingRoom_id"));
			  
			 loggedInUserMap.putIfAbsent(Integer.parseInt(jsonObj.get("user_number").toString()), session);
              
              
             
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		if(type.equals("readProcessing")) {
			
			System.out.println("읽음처리 요청을 보낸 유저 번호 : " + jsonObj.get("user_number"));
			System.out.println("----------------------------"); 
			
			
			readProcessing(Integer.parseInt(jsonObj.get("user_number").toString()), Integer.parseInt(jsonObj.get("chattingRoom_id").toString()), jsonStr);
			 
		} else if(type.equals("message")){
			
			System.out.println("채팅을 보낸 유저 번호 : " + jsonObj.get("user_number"));
			System.out.println("콘텐츠 : "+ jsonObj.get("contents"));
            System.out.println("----------------------------"); 
			
			
			chatService.insert(Integer.parseInt(jsonObj.get("chattingRoom_id").toString()), Integer.parseInt(jsonObj.get("user_number").toString()), jsonObj.get("contents").toString());
			sendMessage(session, jsonStr, user_number);							
		} else {
			System.out.println("그 외....");
		}
		
		
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
		
		//List<MyChattingRoom> myChattingRooms = chatMapper.selectMyChattingRooms(user_number);
		
		Set<Integer> myChatPartnerList = chatService.searchMyChatPartner(user_number);
		
		for(Integer myChatPartner: myChatPartnerList) {
			System.out.println(myChatPartner + "번 유저와 채팅중");
		}
		

		
		Iterator<Integer> keys = loggedInUserMap.keySet().iterator();
        while(keys.hasNext()){
            Integer key = keys.next();
            Session value = loggedInUserMap.get(key);
            System.out.println("키 : "+key+", 값 : "+value);
        }
		
		if(myChatPartnerList != null && myChatPartnerList.size() > 0) {
			try {
				for(Integer key : WebSocketChat.loggedInUserMap.keySet()){
					for(Integer myChatPartner: myChatPartnerList) {
						if(key == myChatPartner) {
							WebSocketChat.loggedInUserMap.get(key).getBasicRemote().sendText(jsonStr);
							
						}
					}
				}
			}catch(IOException e) {
				e.printStackTrace();
			}			
		}
	}
	
	
	public void readProcessing(Integer user_number, Integer current_room_id, String jsonStr) {
		
		// 데이터베이스에서 나(user_number)가 아닌 상대 유저의 메세지들을 모두 읽음처리해줌
		readProcessingMapper.readProcessing(current_room_id, user_number);
		
		Iterator<Integer> keys = loggedInUserMap.keySet().iterator();
        while( keys.hasNext() ){
            Integer key = keys.next();
            Session value = loggedInUserMap.get(key);
            System.out.println("키 : "+key+", 값 : "+value);
        }
		
		// 현재 내가 속한 방의 상대 유저의 유저번호를 가져옴
		Integer myCurrentChatRoomPartner = chatMapper.getMyCurrentChatPartner(user_number, current_room_id);
		
		
		try {
			for(Integer key : WebSocketChat.loggedInUserMap.keySet()){
				if(key == myCurrentChatRoomPartner) {
					WebSocketChat.loggedInUserMap.get(key).getBasicRemote().sendText(jsonStr);
				}	
			}
		}catch(IOException e) {
			e.printStackTrace();
		}			
		
		
	}
}
