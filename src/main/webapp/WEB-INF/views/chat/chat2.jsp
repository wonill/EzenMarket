<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>채팅방</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css"/>
    <script src="https://code.jquery.com/jquery-1.8.3.min.js" integrity="sha256-YcbK69I5IXQftf/mYD8WY0/KmEDCv1asggHpJk1trM8=" crossorigin="anonymous"></script>

    <style>
        .chat_wrap{ 
            border:1px solid #999; width:300px; padding:5px; font-size:13px; color:#333
        }
        .chat_wrap .inner{
            background-color:#000000; border-radius:5px; padding:10px; overflow-y:scroll;height: 400px;
        }
        .chat_wrap .item{
            margin-top:15px
        }
        .chat_wrap .item:first-child{
            margin-top:0px
        }
        .chat_wrap .item .box{
            display:inline-block; max-width:180px; position:relative
        }
        .chat_wrap .item .box::before{
            content:""; position:absolute; left:-8px; top:9px; border-top:0px solid transparent; border-bottom:8px solid transparent;border-right:8px solid #fff;
        }
        .chat_wrap .item .box .msg{
            background:#fff; border-radius:10px; padding:8px; text-align:left; word-break: break-word;
        }
        .chat_wrap .item .box .time{
            font-size:11px; color:#999; position:absolute; right: -75px; bottom:5px; width:70px
        }
        .chat_wrap .item.mymsg{
            text-align:right
        }
        .chat_wrap .item.mymsg .box::before{
            left:auto; right:-8px; border-left:8px solid #ffffff; border-right:0;
        }
        .chat_wrap .item.mymsg .box .msg{
            background:#ffffff
        }
        .chat_wrap .item.mymsg .box .time{
            right:auto; left:-75px
        }
        .chat_wrap .item .box{
            transition:all .3s ease-out; margin:0 0 0 20px;opacity:0
        }
        .chat_wrap .item.mymsg .box{
            transition:all .3s ease-out; margin:0 20px 0 0;
        }
        .chat_wrap .item.on .box{
            margin:0; opacity: 1;
        }

        [type='text']{
            border:0; width:100%;background:#ddd; border-radius:5px; height:30px; padding-left:5px; box-sizing:border-box; margin-top:5px
        }
        [type='text']::placeholder{
            color:#999
        }
        
        .test{
        	width:100px;
        }
        
    </style>
    
    
</head>
<body>
    <div class="chat_wrap">
        <div class="inner">
            
          <div class="item yourmsg on">
                <div class="box">
                    <p class="msg">안녕하세요</p>      
                    <span class="time">오전 10:05</span>
                </div>
            </div>

            <div class="item mymsg on">
                <div class="box">
                    <p class="msg">안녕하세요</p>
                    <span class="time">오전 10:05</span>
                </div>
            </div>
           
        </div>

        <input type="text" class="mymsg aa" placeholder="내용 입력" id="buyermsg">
        <input type="text" class="yourmsg aa" placeholder="내용 입력" id="sellermsg">
        
        
    </div>

	 

	  <p><textarea cols="50" rows="10" id="messageTextArea"></textarea></p>
        <input type="text" id="textMessage" class="test"/>
        <button onclick="sendMessage()">전송</button>
   

	<script>
        
        $(function(){
            $("input[type='text']").keypress(function(e){
                if(e.keyCode == 13 && $(this).val().length){
                    var _val = $(this).val();
                    var _class = $(this).attr("class");
                    $(this).val('');
                    var _tar = $(".chat_wrap .inner").append('<div class="item '+_class+'"><div class="box"><p class="msg">'+_val+'</p><span class="time">'+currentTime()+'</span></div></div>');

                    var lastItem = $(".chat_wrap .inner").find(".item:last");
                    setTimeout(function(){
                        lastItem.addClass("on");
                    },10);

                    var position = lastItem.position().top + $(".chat_wrap .inner").scrollTop();
                    console.log(position);

                    $(".chat_wrap .inner").stop().animate({scrollTop:position},500);
                }
            });

        });
        
        var currentTime = function(){
            var date = new Date();
            var hh = date.getHours();
            var mm = date.getMinutes().toString().length == 1? ("0" + date.getMinutes()) : date.getMinutes();
            var apm = hh >12 ? "오후":"오전";
            var ct = apm + " "+hh+":"+mm+" ";
            return ct;
        }
		
      
       
     	// 「WebSocketEx」는 프로젝트 명
        // 「websocket」는 호스트 명
        // WebSocket 오브젝트 생성 (자동으로 접속 시작한다. - onopen 함수 호출)
        var webSocket = new WebSocket("ws://<%=request.getLocalAddr()%>:8888/ezenmarket/echo");
        // 콘솔 텍스트 에리어 오브젝트
        var messageTextArea = document.getElementById("messageTextArea");
        console.log(messageTextArea.value);
        console.log(messageTextArea.value);
        console.log(messageTextArea.value);
        // WebSocket 서버와 접속이 되면 호출되는 함수
        webSocket.onopen = function(message) {
          // 콘솔 텍스트에 메시지를 출력한다.
          messageTextArea.value += "Server connect...\n";
          console.log('오픈');
          console.log('오픈');
          console.log('오픈');
          console.log('오픈');
        };
        // WebSocket 서버와 접속이 끊기면 호출되는 함수
        webSocket.onclose = function(message) {
          // 콘솔 텍스트에 메시지를 출력한다.
          messageTextArea.value += "Server Disconnect...\n";
        };
        // WebSocket 서버와 통신 중에 에러가 발생하면 요청되는 함수
        webSocket.onerror = function(message) {
          // 콘솔 텍스트에 메시지를 출력한다.
          messageTextArea.value += "error...\n";
        };
        // WebSocket 서버로 부터 메시지가 오면 호출되는 함수
        webSocket.onmessage = function(message) {
          // 콘솔 텍스트에 메시지를 출력한다.
          messageTextArea.value += "Recieve From Server => "+message.data+"\n";
          var _tar = $(".chat_wrap .inner").append('<div class="item '+_class+'"><div class="box"><p class="msg">'+ message.data+'</p><span class="time">'+currentTime()+'</span></div></div>');
        };
       // Send 버튼을 누르면 호출되는 함수
      function sendMessage() {                      
        // 송신 메시지를 작성하는 텍스트 박스 오브젝트를 취득한다.
        var message = document.getElementById("textMessage");
        // 콘솔 텍스트에 메시지를 출력한다.
        console.log(message.value);
        messageTextArea.value += "Send to Server => "+message.value+"\n";
        // WebSocket 서버에 메시지를 송신한다.
        webSocket.send(message.value);
        // 송신 메시지를 작성하는 텍스트 박스를 초기화한다.
        message.value = "";
      }
      // Disconnect 버튼을 누르면 호출되는 함수
      function disconnect() {
        // WebSocket 접속 해제
        webSocket.close();

        
      }	
      
     
    </script>
    
</body>
</html>