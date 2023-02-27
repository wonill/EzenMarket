package com.ezen.ezenmarket.chat.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@ServerEndpoint(value = "/echo/{chattingRoom_id}")
public class WebSocketChat{
	
	private static final List<Session> sessionList = new ArrayList<>();
	
	private JSONParser jsonParser = new JSONParser();

	public WebSocketChat() {
		log.info("웹소켓 객체 생성");
	}
	
	@OnOpen
	public void onOpen(Session session, @PathParam("chattingRoom_id")Integer chattingRoom_id) {
		log.info("onOpen: " + session);
		log.info(chattingRoom_id + "번 방에 입장하셨습니다.");
//		try {
//			session.getBasicRemote().sendText("채팅에 연결되었습니다.");
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
		sessionList.add(session);
		
		for(int i = 0; i < sessionList.size(); i++) {
			log.info(sessionList.get(i));			
		}
	}
	
	@OnMessage
	public void onMessage(String jsonStr, Session session,  @PathParam("chattingRoom_id")Integer chattingRoom_id) {
		
		log.info("jsonStr: " + jsonStr);
		System.out.println(chattingRoom_id + "번 방에서 메세지가 서버로 도착");
		
		sendAll(session, jsonStr, chattingRoom_id);
//		try {
//			session.getBasicRemote().sendText("<나> : " + message);
//		} catch (IOException e) {
//			e.printStackTrace();
//		}						
	}
	
	@OnError
	public void onError(Throwable e, Session session) {
		log.error(e);
		log.error(session);
	}
	
	@OnClose
	public void onClose(Session session) {
		log.info(session.getId() + " exit the chat room");
		sessionList.remove(session);
	}
	
	public void sendAll(Session mySession, String jsonStr, Integer chattingRoom_id) {
		JSONObject jsonObj = null;
		try {
			jsonObj = (JSONObject) jsonParser.parse(jsonStr);
			
			
			  System.out.println("=====Info=====");
			  System.out.println("채팅방 아이디 : "+ jsonObj.get("chattingRoom_id"));
              System.out.println("콘텐츠 : "+ jsonObj.get("contents"));
              System.out.println("----------------------------"); 
              
              
             
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		try {
			for(Session session : WebSocketChat.sessionList) {
				if(!mySession.getId().equals(session.getId())) {
					session.getBasicRemote().sendText(jsonStr);
				}
			}
			
		} catch(IOException e){
			e.printStackTrace();
		}
	}
}
