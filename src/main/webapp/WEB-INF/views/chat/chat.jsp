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

        *{
            box-sizing: border-box;
        }
        
        body{
            margin: 0;
            padding: 0;
        }
        #container{
            width: 1903px;
            display: flex;
            justify-content: center;
            background-color: #f9f8f8;
        }
        
        .chatroom_list{
            width: 550px;
            height: 930px;
            border: solid 0px black;
            overflow-y:scroll;
            background-color: white;
        }

        .first_box{
            border: solid 0px black;
            width: 100%;
            height: 60px;

        }

        #title{
            margin-top: 70px;
            margin-left: 20px;
            font-size: 30px;
            font-weight: bold;
        }

        .chatroom_list .box{ 
            border: solid 0px black;
            width: 100%;
            height: 110px;
            position: relative;
            
        }
        .chatroom_list .box:hover{ 
            background-color: #f3f0f0;
        }

        .chatroom_list .box .profile{
            border: solid 0px black;
            position: absolute;
            top: 15px;
            left: 15px;
            width: 80px;
            height: 80px;
            border-radius: 50px;
            background-image: url('https://img.insight.co.kr/static/2021/09/14/700/img_20210914111200_9s96jjji.webp');
            background-size: cover;
            background-repeat: no-repeat;
        }

        .chatroom_list .box .nickname{
            position: absolute;
            border: solid 0px black;
            left: 115px;
            top: 25px;
        }

        .chatroom_list .box .chat_box{
            position: absolute;
            border: solid 0px black;
            left: 115px;
            top: 65px;
            

           
        }

        .chatroom_list .box .chat_box .last_chat{
            max-width: 320px;
            max-height: 20px;

            overflow: hidden;  		
            text-overflow: ellipsis;  	
            white-space: nowrap; 		
            word-break:break-all;
        }


        .chatroom_list .box .chat_box .last_chat_time{
            color:#999; 
            position:absolute; 
            right: -73px; 
            bottom: 13px;
            font-size: 14px;
        }
        

        .chat_wrap{ 
            border:1px solid #999;
            width:550px;
            padding:5px; 
            font-size:13px; 
            color:#333;
            background-color: white;
        }
        .chat_wrap .inner{
            background-color:rgb(39, 39, 39);
            border-radius:5px; 
            padding:10px; 
            padding-left: 20px;
            padding-right: 20px;
            overflow-y:scroll;
            height: 735px;
        }
        .chat_wrap .item{
            margin-top:25px;
        }
        .chat_wrap .item:first-child{
            margin-top:10px
        }
        .chat_wrap .item .box{
            display:inline-block; 
            max-width:180px; 
            position:relative;
        }
        .chat_wrap .item .box::before{
            content:""; 
            position:absolute; 
            left:-7px; 
            top:9px; 
            border-top:0px solid transparent; 
            border-bottom:8px solid transparent;
            border-right:8px solid #fff;
        }
        .chat_wrap .item .box .msg{
            background:#fff; 
            border-radius:15px; 
            padding:11px; 
            text-align:left; 
            word-break: break-word;
            font-size: 20px;
        }
        .chat_wrap .item .box .time{
            font-size:13px; 
            color:#999; 
            position:absolute; 
            right: -75px; 
            bottom:5px; 
            width:70px
        }
        .chat_wrap .item.mymsg{
            text-align:right
        }
        .chat_wrap .item.mymsg .box::before{
            left:auto; 
            right:-8px; 
            border-left:8px solid #ffffff; 
            border-right:0;
        }
        .chat_wrap .item.mymsg .box .msg{
            background:#ffffff
        }
        .chat_wrap .item.mymsg .box .time{
            right:auto; 
            left:-75px
        }
        .chat_wrap .item .box{
            transition:all .3s ease-out; 
            margin:0 0 0 20px;
            opacity:0;
        }
        .chat_wrap .item .mymsg .box{
            transition:all .3s ease-out; 
            margin:0 20px 0 0;
        }
        .chat_wrap .item.on .box{
            margin:0; opacity: 1;
        }

        #input{
            border:0; 
            width:100%;
            background:#ddd; 
            border-radius:5px; 
            height:50px; 
            padding-left:10px; 
            box-sizing:border-box; 
            margin-top:5px;
            font-size: 20px;
        }

        #input::placeholder{
            color:#999
        }
    
        .info{
            width: 100%;
            height: 125px;
            background-color: white;
            position: relative;
        }

        .info .nickname{
            top: 10px;
            left: 23px;
            position: absolute;
            border: solid 0px black; 
            font-size: 20px;
            font-weight: bold;
        }

        .info .post_img{
            top: 50px;
            left: 23px;
            position: absolute;
            border: solid 0px black;
            width: 60px;
            height: 60px;
            background-image: url('https://img.insight.co.kr/static/2021/09/14/700/img_20210914111200_9s96jjji.webp');
            background-size: cover;
        }

        .info .post_title{
            position: absolute;
            border: solid 0px black;
            top: 85px;
            left: 100px;

            max-width: 400px;

            overflow: hidden;  		
            text-overflow: ellipsis;  	
            white-space: nowrap; 		
            word-break:break-all;

            font-size: 15px;
        }

        .info .price{
            position: absolute;
            border: solid 0px black;
            top: 55px;
            left: 100px;

            font-size: 22px;
            font-weight: bold;
        }
        
        #bar{
        	width:100%;
        	height:80px;
        	background-color: white;
        	border-bottom: solid 3px #f9f8f8;
        }
    </style>
   
    
</head>
<body>
	<jsp:include page="../include/header.jsp"/>
	<div id="bar"></div>

<div id="container">


    <div class="chatroom_list">
        <div class="first_box">
            <div id="title">
                전체 대화
            </div>
        </div>

        
        <div class="box">
            <div class="profile"></div>
            <div class="nickname">구매자</div>
            <div class="chat_box">
            <p class="last_chat">물건 살게요ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</p>
            <span class="last_chat_time">오후 10:05</span>
            </div>
        </div>
        <div class="box">
            <div class="profile"></div>
            <div class="nickname">구매자</div>
            <div class="chat_box">
            <p class="last_chat">물건 살게요</p>
            <span class="last_chat_time">오후 10:05</span>
            </div>
        </div>
        <div class="box">
            <div class="profile"></div>
            <div class="nickname">구매자</div>
            <div class="chat_box">
            <p class="last_chat">물건 살게요</p>
            <span class="last_chat_time">오후 10:05</span>
            </div>
        </div>
        <div class="box">
            <div class="profile"></div>
            <div class="nickname">구매자</div>
            <div class="chat_box">
            <p class="last_chat">물건 살게요</p>
            <span class="last_chat_time">오후 10:05</span>
            </div>
        </div>
        <div class="box">
            <div class="profile"></div>
            <div class="nickname">구매자</div>
            <div class="chat_box">
            <p class="last_chat">물건 살게요</p>
            <span class="last_chat_time">오후 10:05</span>
            </div>
        </div>
        <div class="box">
            <div class="profile"></div>
            <div class="nickname">구매자</div>
            <div class="chat_box">
            <p class="last_chat">물건 살게요</p>
            <span class="last_chat_time">오후 10:05</span>
            </div>
        </div>
        <div class="box">
            <div class="profile"></div>
            <div class="nickname">구매자</div>
            <div class="chat_box">
            <p class="last_chat">물건 살게요</p>
            <span class="last_chat_time">오후 10:05</span>
            </div>
        </div>
        <div class="box">
            <div class="profile"></div>
            <div class="nickname">구매자</div>
            <div class="chat_box">
            <p class="last_chat">물건 살게요</p>
            <span class="last_chat_time">오후 10:05</span>
            </div>
        </div>
        <div class="box">
            <div class="profile"></div>
            <div class="nickname">구매자</div>
            <div class="chat_box">
            <p class="last_chat">물건 살게요</p>
            <span class="last_chat_time">오후 10:05</span>
            </div>
        </div>
        <div class="box">
            <div class="profile"></div>
            <div class="nickname">구매자</div>
            <div class="chat_box">
            <p class="last_chat">물건 살게요</p>
            <span class="last_chat_time">오후 10:05</span>
            </div>
        </div>
        <div class="box">
            <div class="profile"></div>
            <div class="nickname">구매자</div>
            <div class="chat_box">
            <p class="last_chat">물건 살게요</p>
            <span class="last_chat_time">오후 10:05</span>
            </div>
        </div>
        <div class="box">
            <div class="profile"></div>
            <div class="nickname">구매자</div>
            <div class="chat_box">
            <p class="last_chat">물건 살게요</p>
            <span class="last_chat_time">오후 10:05</span>
            </div>
        </div>
        <div class="box">
            <div class="profile"></div>
            <div class="nickname">구매자</div>
            <div class="chat_box">
            <p class="last_chat">물건 살게요</p>
            <span class="last_chat_time">오후 10:05</span>
            </div>
        </div>
        
       
        
        
    </div>


    <div class="chat_wrap">
        <div class="info">
            <div class="nickname">구매자</div>
            <div class="post_img"></div>
            <div class="price">15,000,000원</div>
            <div class="post_title">중고오토바이 당일최고가현금매입 PCX/NMAX/XMAX/포르자/커브/R3</div>
        </div>
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
          <div class="item yourmsg on">
                <div class="box">
                    <p class="msg">안녕하세요</p>      
                    <span class="time">오전 10:05</span>
                </div>
            </div>

        </div>

        <input type="text" class="mymsg" placeholder="내용 입력" id="input">
       <!-- <input type="text" class="yourmsg" placeholder="내용 입력">-->
    </div>
    
</div>






<script>
    
    $(function(){
    	
    	var lastItem = $(".chat_wrap .inner").find(".item:last");
        var position = lastItem.position().top + $(".chat_wrap .inner").scrollTop();
        $(".chat_wrap .inner").scrollTop(position);
    	
    	
        $("#input").keypress(function(e){
            if(e.keyCode == 13 && $(this).val().length){
                var _val = $(this).val();
                var _class = $(this).attr("class");
                
                sendMessage(this);
                
                //$(this).val('');
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
        var apm = hh > 12 ? "오후":"오전";
        var ct = apm + " "+ (hh > 12? hh - 12 : hh) +":"+mm+" ";
        return ct;
    }
    
  
   
     // 「WebSocketEx」는 프로젝트 명
    // 「websocket」는 호스트 명
    // WebSocket 오브젝트 생성 (자동으로 접속 시작한다. - onopen 함수 호출)
    const chattingRoom_id = ${chattingRoom_id}
    var webSocket = new WebSocket("ws://<%=request.getLocalAddr()%>:8888/ezenmarket/echo/" + chattingRoom_id);
    // 콘솔 텍스트 에리어 오브젝트
    //var messageTextArea = document.getElementById("messageTextArea");
    //console.log(messageTextArea.value);
    //console.log(messageTextArea.value);
    //console.log(messageTextArea.value);
    // WebSocket 서버와 접속이 되면 호출되는 함수
    webSocket.onopen = function(message) {
      // 콘솔 텍스트에 메시지를 출력한다.
      //messageTextArea.value += "Server connect...\n";
      console.log('오픈');
      console.log('오픈');
      console.log('오픈');
      console.log('오픈');
    };
    // WebSocket 서버와 접속이 끊기면 호출되는 함수
    webSocket.onclose = function(message) {
      // 콘솔 텍스트에 메시지를 출력한다.
      console.log("Server Disconnect...\n");
    };
    // WebSocket 서버와 통신 중에 에러가 발생하면 요청되는 함수
    webSocket.onerror = function(message) {
      // 콘솔 텍스트에 메시지를 출력한다.
      console.log("error...\n");
    };
    // WebSocket 서버로 부터 메시지가 오면 호출되는 함수
    webSocket.onmessage = function(message) {
      // 콘솔 텍스트에 메시지를 출력한다.
      
      const info = JSON.parse(message.data);
      
      console.log('서버에서 온채팅방 번호', info.chattingRoom_id);
      console.log("Recieve From Server => "+info.contents+"\n");
      console.log('여기 방 번호', chattingRoom_id);
      
      if(info.chattingRoom_id == chattingRoom_id){
    	  
      var _tar = $(".chat_wrap .inner").append('<div class="item yourmsg"><div class="box"><p class="msg">'+ info.contents+'</p><span class="time">'+currentTime()+'</span></div></div>');
      
      var lastItem = $(".chat_wrap .inner").find(".item:last");
      setTimeout(function(){
          lastItem.addClass("on");
      },10);

      var position = lastItem.position().top + $(".chat_wrap .inner").scrollTop();
      console.log(position);

      $(".chat_wrap .inner").stop().animate({scrollTop:position},500);
      }
      
    };
   // Send 버튼을 누르면 호출되는 함수
  function sendMessage(message) {                      
    // 송신 메시지를 작성하는 텍스트 박스 오브젝트를 취득한다.
   // var message = document.getElementById("input");
    // 콘솔 텍스트에 메시지를 출력한다.
 	
    const info = {
       chattingRoom_id:chattingRoom_id,
       contents:message.value
    }
    
    const json = JSON.stringify(info);
    
    
    console.log("Send to Server => "+json+"\n");
    // WebSocket 서버에 메시지를 송신한다.
    webSocket.send(json);
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