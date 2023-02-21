package com.ezen.ezenmarket.chat.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.springframework.stereotype.Controller;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@ServerEndpoint(value = "/echo")
public class WebSocketChat{
	
	private static final List<Session> sessionList = new ArrayList<>();

	public WebSocketChat() {
		log.info("웹소켓 객체 생성");
	}
	
	@OnOpen
	public void onOpen(Session session) {
		log.info("onOpen: " + session);
		
		try {
			session.getBasicRemote().sendText("대화방에 연결되었습니다.");
		} catch (IOException e) {
			e.printStackTrace();
		}
		sessionList.add(session);
		
		for(int i = 0; i < sessionList.size(); i++) {
			log.info(sessionList.get(i));			
		}
	}
	
	@OnMessage
	public void onMessage(String message, Session session) {
		
		log.info("onMessage: " + message);
		sendAll(session, message);
		try {
			session.getBasicRemote().sendText("<나> : " + message);
		} catch (IOException e) {
			e.printStackTrace();
		}						
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
	
	public void sendAll(Session ss, String message) {
		try {
			for(Session session :WebSocketChat.sessionList) {
				if(!ss.getId().equals(session.getId())) {
					session.getBasicRemote().sendText("<전체응답> : " + message);
				}
			}
			
		} catch(IOException e){
			e.printStackTrace();
		}
	}
}
