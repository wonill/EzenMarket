package com.ezen.ezenmarket.chat.controller;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.stereotype.Controller;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
public class WebSocketHandler extends TextWebSocketHandler implements InitializingBean{
	
	 //@Autowired
	 //ChatService cService;
	
	 private static int i;;
	
	
	/**
     * websocket 연결 성공 시
     */
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
    	
    	i++;
        log.info(session.getId() + " 연결 성공 => 총 접속 인원 : " + i + "명");
    }
 
    /**
     * websocket 연결 종료 시
     */
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
    	i--;
        log.info(session.getId() + " 연결 종료 => 총 접속 인원 : " + i + "명");
        
    }
    
    /**
     * websocket 메세지 수신 및 송신
     */
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
 
    }
    
    
    
    @Override
    public void afterPropertiesSet() throws Exception {}
}
