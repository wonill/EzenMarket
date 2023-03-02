package com.ezen.ezenmarket.chat.controller;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.server.standard.ServerEndpointExporter;

import com.ezen.ezenmarket.chat.service.ChatService;

@Configuration
public class WebSocketConfig {
    
    @Bean
    public WebSocketChat webSocketChat() {
        return new WebSocketChat();
    }
    
   
    
    @Bean
    public ServerEndpointExporter serverEndpointExporter() {
        return new ServerEndpointExporter();
    }
}
